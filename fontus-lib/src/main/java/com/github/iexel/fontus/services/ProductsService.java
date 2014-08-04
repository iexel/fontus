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

package com.github.iexel.fontus.services;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

@Repository
public class ProductsService {

	protected int nextId = 8;
	protected List<Product> products = new ArrayList<Product>();

	public ProductsService() {
		products.add(new Product(1, "Java SE (book)", new BigDecimal("40.50")));
		products.add(new Product(2, "Spring MVC (book)", new BigDecimal("52.00")));
		products.add(new Product(3, "Oracle (book)", new BigDecimal("31.20")));
		products.add(new Product(4, "SQL (book)", new BigDecimal("45.50")));
		products.add(new Product(5, "Spring (book)", new BigDecimal("51.00")));
		products.add(new Product(6, "PHP (book)", new BigDecimal("33.20")));
		products.add(new Product(7, "HTML (book)", new BigDecimal("41.50")));
	}

	private synchronized int nextId() {
		return nextId++;
	}

	public GridResponse<Product> getProducts(GridRequest dRequest) throws ServiceException {

		GridResponse<Product> dResponse = new GridResponse<Product>();
		dResponse.setPageSize(dRequest.getPageSize());
		dResponse.setTotalRowCount(products.size());

		// if there are no items in the list, return an empty response object:
		if (products.size() == 0) {
			dResponse.setPageNumber(1);
			return dResponse;
		}

		dResponse.setPageNumber(dRequest.getPageNumber());

		int startIndex = (dResponse.getPageNumber() - 1) * dResponse.getPageSize();
		// the start index should not be beyond the last item in the grid:
		while (startIndex >= dResponse.getTotalRowCount() && startIndex > 0) {
			startIndex -= dResponse.getPageSize();
			dResponse.setPageNumber(dResponse.getPageNumber() - 1);
		}

		// the end index should not be beyond the last item in the grid:
		int endIndex = startIndex + dResponse.getPageSize();
		endIndex = endIndex > products.size() ? products.size() : endIndex;

		dResponse.setRows(products.subList(startIndex, endIndex));
		return dResponse;
	}

	public Product getProduct(int productId) throws ServiceException {
		for (Product product : products) {
			if (product.getId() == productId) {
				return product;
			}
		}
		return null;
	}

	public GridRowResponse createProduct(Product product) throws ServiceException {
		product.setId(nextId());
		product.setTimestamp((new Date()).getTime());
		products.add(product);
		return new GridRowResponse(product.getId(), product.getTimestamp());
	}

	public GridRowResponse updateProduct(Product product) throws ServiceException {
		for (int i = 0; i < products.size(); i++) {
			if (products.get(i).getId() == product.getId()) {

				if (products.get(i).getTimestamp() != product.getTimestamp()) {
					throw new ServiceException(ServiceException.ErrorCode.EXCEPTION_MODIFIED_BY_ANOTHER_USER);
				}

				product.setTimestamp((new Date()).getTime());
				products.set(i, product);
				return new GridRowResponse(product.getId(), product.getTimestamp());
			}
		}

		throw new ServiceException(ServiceException.ErrorCode.EXCEPTION_DB_ERROR); // record is not found
	}

	public boolean deleteProduct(int productId) throws ServiceException {
		for (int i = 0; i < products.size(); i++) {
			if (products.get(i).getId() == productId) {
				products.remove(i);
				return true;
			}
		}
		return false;
	}
}
