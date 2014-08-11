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

package com.github.iexel.fontus.web.test;

import static org.hamcrest.Matchers.equalTo;
import static org.mockito.Matchers.any;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.math.BigDecimal;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import com.github.iexel.fontus.services.GridRequest;
import com.github.iexel.fontus.services.GridResponse;
import com.github.iexel.fontus.services.GridRowResponse;
import com.github.iexel.fontus.services.IProductsService;
import com.github.iexel.fontus.services.Product;
import com.github.iexel.fontus.web.rest.ProductsController;

/**
 * This class contains unit tests that use Spring MVC Test Framework. It tests Spring MVC controllers (with no underlying logic).
 */

public class SpringMvcUnitTest {

	private MockMvc mockMvc;

	// An equivalent of mock() method; should be used with initMocks(this) only.
	@Mock
	private IProductsService productsService;

	// @InjectMocks - injects mock or spy fields into tested object automatically.
	@InjectMocks
	ProductsController productsController;

	@Before
	public void setup() {
		// Initialize all @Mock fields.
		MockitoAnnotations.initMocks(this);
		// Default and stand-alone Spring MVC configuration
		this.mockMvc = MockMvcBuilders.standaloneSetup(productsController).build();
	}

	@Test
	public void shouldGet() throws Exception {

		GridResponse<Product> gridResponse = new GridResponse<Product>(1, 100, 15, null);
		// Stub a service method. The stub responds to any input GridRequest object as
		// incorrect input data should not generate any exception. This allows to verify
		// the call later and to generate a sensible error message.
		when(productsService.getProducts(any(GridRequest.class))).thenReturn(gridResponse);
		// To create a stub for particular input data use:
		// when(productsService.getProducts(product)).thenReturn(gridResponse);

		// Emulate HTTP request
		MockHttpServletRequestBuilder m = get("/rest/products?rows=100&page=1&sidx=id&sord=asc");
		m.accept(MediaType.APPLICATION_JSON);
		ResultActions r = this.mockMvc.perform(m);

		// Verify the method call to make sure HTTP request has been correctly interpreted.
		GridRequest gridRequest = new GridRequest(1, 100, "id", false, null, null, null);
		verify(productsService).getProducts(gridRequest);

		// Print and verify the controller's response.
		r.andDo(print());
		r.andExpect(status().isOk());
		r.andExpect(jsonPath("$.page", equalTo(1)));
	}

	@Test
	public void shouldCreate() throws Exception {

		GridRowResponse gridRowResponse = new GridRowResponse(3, 1235);
		when(productsService.createProduct(any(Product.class))).thenReturn(gridRowResponse);

		MockHttpServletRequestBuilder m = post("/rest/products");
		m.contentType(MediaType.APPLICATION_JSON);
		m.accept(MediaType.APPLICATION_JSON);
		m.content("{\"name\":\"Test product\", \"price\":10.00, \"version\":1234}");
		ResultActions r = this.mockMvc.perform(m);

		Product product = new Product(0, "Test product", new BigDecimal("10.00"), 1234);
		verify(productsService).createProduct(product);

		r.andDo(print());
		r.andExpect(status().isOk());
		r.andExpect(jsonPath("$.id", equalTo(3)));
	}

	@Test
	public void shouldUpdate() throws Exception {

		GridRowResponse gridRowResponse = new GridRowResponse(3, 1235);
		when(productsService.updateProduct(any(Product.class))).thenReturn(gridRowResponse);

		MockHttpServletRequestBuilder m = put("/rest/products/3");
		m.contentType(MediaType.APPLICATION_JSON);
		m.accept(MediaType.APPLICATION_JSON);
		m.content("{\"name\":\"Test product\", \"price\":10.00, \"version\":1234}");
		ResultActions r = this.mockMvc.perform(m);

		Product product = new Product(3, "Test product", new BigDecimal("10.00"), 1234);
		verify(productsService).updateProduct(product);

		r.andDo(print());
		r.andExpect(status().isOk());
		r.andExpect(jsonPath("$.id", equalTo(3)));
	}

	@Test
	public void shouldDelete() throws Exception {

		MockHttpServletRequestBuilder m = delete("/rest/products/3");
		m.contentType(MediaType.APPLICATION_JSON);
		m.accept(MediaType.APPLICATION_JSON);
		m.content("{\"version\":0}");
		ResultActions r = this.mockMvc.perform(m);
		r.andDo(print());
		r.andExpect(status().isOk());

		verify(productsService).deleteProduct(3, 0);
	}
}
