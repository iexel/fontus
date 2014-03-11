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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductsController {

	@Autowired
	private ProductsService productService;

	@RequestMapping(value = "rest/products", method = RequestMethod.GET)
	public JqGridResponse<Product> productsAll(JqGridRequest jqGridRequest) throws ServiceException {

		GridResponse<Product> dataResponse = productService.getProducts(jqGridRequest.createDataRequest());
		return new JqGridResponse<Product>(dataResponse);
	}

	@RequestMapping(value = "rest/products", method = RequestMethod.POST)
	public GridRowResponse createProduct(@Valid Product product) throws ServiceException {

		return productService.createProduct(product);
	}

	@RequestMapping(value = "rest/products/{id}", method = RequestMethod.PUT)
	public GridRowResponse updateProduct(@Valid Product product, @PathVariable("id") int productId) throws ServiceException {

		return productService.updateProduct(product);
	}

	@RequestMapping(value = "rest/products/{id}", method = RequestMethod.DELETE)
	public void deleteProduct(@PathVariable("id") int productId) throws ServiceException {

		productService.deleteProduct(productId);
	}
}
