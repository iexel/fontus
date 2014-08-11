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

import javax.persistence.EntityManager;
import javax.persistence.OptimisticLockException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public class ProductsService implements IProductsService {

	@PersistenceContext
	EntityManager entityManager;

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public GridResponse<Product> getProducts(GridRequest dRequest) throws ServiceException {
		SelectQueryBuilder<Product> selectQueryBuilder = new SelectQueryBuilder<Product>(Product.class, entityManager);
		return selectQueryBuilder.getRecords(dRequest);
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public Product getProduct(int productId) throws ServiceException {
		return null;
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public GridRowResponse createProduct(Product product) throws ServiceException {
		entityManager.persist(product);
		return new GridRowResponse(product.getId(), product.getVersion());
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public GridRowResponse updateProduct(Product product) throws ServiceException {
		try {
			entityManager.merge(product);
			return new GridRowResponse(product.getId(), product.getVersion());
		} catch (OptimisticLockException ex) {
			throw new ServiceException(ServiceException.ErrorCode.EXCEPTION_MODIFIED_BY_ANOTHER_USER, ex);
		}
	}

	@Override
	@Transactional(rollbackFor = Throwable.class)
	public void deleteProduct(int productId, int productVersion) throws ServiceException {

		Query query = entityManager.createNamedQuery("Product.delete");
		query.setParameter("id", productId);
		query.setParameter("version", productVersion);
		int numberOfRecords = query.executeUpdate();

		if (numberOfRecords == 0) {
			throw new ServiceException(ServiceException.ErrorCode.EXCEPTION_MODIFIED_BY_ANOTHER_USER);
		}
	}
}
