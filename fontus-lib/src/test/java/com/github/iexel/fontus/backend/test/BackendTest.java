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

package com.github.iexel.fontus.backend.test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNull;
import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.math.BigDecimal;
import java.util.List;

import net.myproject.services.GridRequest;
import net.myproject.services.GridResponse;
import net.myproject.services.GridRowResponse;
import net.myproject.services.Product;
import net.myproject.services.ProductsService;

import org.junit.Test;

public class BackendTest {

	@Test
	public void testProductsService() throws Exception {
		String updatedRecordName = "Updated by automated test - 1";
		ProductsService productsService = new ProductsService();
		Product product;
		GridRowResponse gridRowResponse;

		// Create a record
		product = new Product();
		product.setName("A record created by automated test - 1");
		product.setPrice(new BigDecimal("10.00"));
		gridRowResponse = productsService.createProduct(product);
		int id = gridRowResponse.getId();
		long timestamp = gridRowResponse.getTimestamp();

		// Update the new record
		product = new Product();
		product.setName(updatedRecordName);
		product.setPrice(new BigDecimal("20.00"));
		product.setId(id);
		product.setTimestamp(timestamp);
		gridRowResponse = productsService.updateProduct(product);

		// Get top 1000 records
		GridRequest gridRequest = new GridRequest();
		gridRequest.setPageNumber(1);
		gridRequest.setPageSize(1000);
		gridRequest.setSortField("id");
		gridRequest.setSortDesc(false);
		GridResponse<Product> gridResponse = productsService.getProducts(gridRequest);
		List<Product> allProducts = gridResponse.getRows();

		for (int i = 0; i < allProducts.size(); i++) {
			Product p = allProducts.get(i);
			if (p.getId() == id) {
				assertEquals(p.getName(), updatedRecordName);
				break;
			}
			if (i == allProducts.size() - 1) {
				fail("Test record not found.");
			}
		}

		// Delete the record
		assertTrue("Record has not been deleted: record not found.", productsService.deleteProduct(id));

		// Check that the record has been deleted
		assertNull("Record has not been deleted: record still present.", productsService.getProduct(id));
	}
}
