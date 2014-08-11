/*
 * Copyright 2014 iexel
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.github.iexel.fontus.web.rest;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.github.iexel.fontus.services.GridResponse;
import com.github.iexel.fontus.services.GridRowResponse;
import com.github.iexel.fontus.services.IProductsService;
import com.github.iexel.fontus.services.Product;
import com.github.iexel.fontus.services.ServiceException;
import com.github.iexel.fontus.web.jqgrid.JqGridRequest;
import com.github.iexel.fontus.web.jqgrid.JqGridResponse;

@RestController
public class ProductsController {

	@Autowired
	private IProductsService productsService;

	/*
	 * RESTful web service used by AJAX.
	 */

	@RequestMapping(value = "ajax/products", method = RequestMethod.GET)
	public JqGridResponse<Product> productsAll(JqGridRequest jqGridRequest) throws ServiceException {

		GridResponse<Product> dataResponse = productsService.getProducts(jqGridRequest.createDataRequest());
		return new JqGridResponse<Product>(dataResponse);
	}

	@RequestMapping(value = "ajax/products", method = RequestMethod.POST)
	public GridRowResponse createProduct(@Valid Product product) throws ServiceException {

		return productsService.createProduct(product);
	}

	@RequestMapping(value = "ajax/products/{id}", method = RequestMethod.PUT)
	public GridRowResponse updateProduct(@Valid Product product, @PathVariable("id") int productId) throws ServiceException {

		product.setId(productId);
		return productsService.updateProduct(product);
	}

	@RequestMapping(value = "ajax/products/{id}", method = RequestMethod.DELETE)
	public void deleteProduct(@RequestBody MultiValueMap<String, String> formData, @PathVariable("id") int productId) throws ServiceException {

		int productVersion = Integer.parseInt(formData.get("version").get(0));
		deleteProductWrapper(productId, productVersion);
	}

	/*
	 * External RESTful web service. It wraps all the methods used in AJAX requests, but receives data in JSON (rather than "application/x-www-form-urlencoded"). The method signatures differ in the
	 * 
	 * @RequestBody attribute only. AJAX methods cannot receive JASON because it makes processing data binding errors more difficult in Spring MVC. This group of methods has a separate realm (<http>
	 * tag) in the Spring Security config.
	 */

	// GET requests should not have a body
	@RequestMapping(value = "rest/products", method = RequestMethod.GET)
	public JqGridResponse<Product> productsAllR(JqGridRequest jqGridRequest) throws ServiceException {

		return productsAll(jqGridRequest);
	}

	@RequestMapping(value = "rest/products", method = RequestMethod.POST)
	public GridRowResponse createProductR(@Valid @RequestBody Product product) throws ServiceException {

		return createProduct(product);
	}

	@RequestMapping(value = "rest/products/{id}", method = RequestMethod.PUT)
	public GridRowResponse updateProductR(@Valid @RequestBody Product product, @PathVariable("id") int productId) throws ServiceException {

		return updateProduct(product, productId);
	}

	@RequestMapping(value = "rest/products/{id}", method = RequestMethod.DELETE)
	public void deleteProductR(@RequestBody Map<String, Integer> myJsonRequest, @PathVariable("id") int productId) throws ServiceException {

		int productVersion = myJsonRequest.get("version");
		deleteProductWrapper(productId, productVersion);
	}

	/*
	 * Utility methods.
	 */

	private void deleteProductWrapper(int productId, int productVersion) throws ServiceException {

		productsService.deleteProduct(productId, productVersion);
	}

	// Requests for testing the external RESTful web services:
	// GET:_____http://localhost:8080/fontus-web/rest/products?rows=5&page=1&sidx=id&sord=asc
	// POST:____http://localhost:8080/fontus-web/rest/products_______{"name":"REST create test", "price":10.20, "timestamp":0}_____Content-Type : application/json
	// PUT:_____http://localhost:8080/fontus-web/rest/products/4_____{"name":"REST update test", "price":10.20, "timestamp":0}_____Content-Type : application/json
	// DELETE:__http://localhost:8080/fontus-web/rest/products/4
}
