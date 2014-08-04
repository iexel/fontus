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

package net.myproject.rest;

import javax.validation.Valid;

import net.myproject.jqgrid.JqGridRequest;
import net.myproject.jqgrid.JqGridResponse;
import net.myproject.services.GridResponse;
import net.myproject.services.GridRowResponse;
import net.myproject.services.Product;
import net.myproject.services.ProductsService;
import net.myproject.services.ServiceException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductsController {

	@Autowired
	private ProductsService productService;

	/*
	 * RESTful web service used by AJAX.
	 */

	@RequestMapping(value = "ajax/products", method = RequestMethod.GET)
	public JqGridResponse<Product> productsAll(JqGridRequest jqGridRequest) throws ServiceException {

		GridResponse<Product> dataResponse = productService.getProducts(jqGridRequest.createDataRequest());
		return new JqGridResponse<Product>(dataResponse);
	}

	@RequestMapping(value = "ajax/products", method = RequestMethod.POST)
	public GridRowResponse createProduct(@Valid Product product) throws ServiceException {

		return productService.createProduct(product);
	}

	@RequestMapping(value = "ajax/products/{id}", method = RequestMethod.PUT)
	public GridRowResponse updateProduct(@Valid Product product, @PathVariable("id") int productId) throws ServiceException {

		product.setId(productId);
		return productService.updateProduct(product);
	}

	@RequestMapping(value = "ajax/products/{id}", method = RequestMethod.DELETE)
	public void deleteProduct(@PathVariable("id") int productId) throws ServiceException {

		productService.deleteProduct(productId);
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
	public void deleteProductR(@PathVariable("id") int productId) throws ServiceException {

		deleteProduct(productId);
	}

	// Requests for testing the external RESTful web services:
	// GET:_____http://localhost:8080/fontus-web/rest/products?rows=5&page=1&sidx=id&sord=asc
	// POST:____http://localhost:8080/fontus-web/rest/products_______{"name":"REST create test", "price":10.20, "timestamp":0}_____Content-Type : application/json
	// PUT:_____http://localhost:8080/fontus-web/rest/products/4_____{"name":"REST update test", "price":10.20, "timestamp":0}_____Content-Type : application/json
	// DELETE:__http://localhost:8080/fontus-web/rest/products/4

}
