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
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

/**
 * This class can be used to perform SELECT queries on any JPA entity. Queries can include filtering (WHERE clause), and sorting (ORDER BY) options. Query parameters are defined in a GridRequest
 * object. The class obtains all information about an entity (field names and types, the entity name) an run time.
 * */
public class SelectQueryBuilder<T> {

	private final EntityManager entityManager;
	// Java Generics do not keep information about generic types at runtime. This field is used to obtain information about <T>.
	private final Class<T> entityType;

	public SelectQueryBuilder(Class<T> entityType, EntityManager entityManager) {
		this.entityType = entityType;
		this.entityManager = entityManager;
	}

	public GridResponse<T> getRecords(GridRequest request) throws ServiceException {

		GridResponse<T> response = new GridResponse<T>();
		response.setPageSize(request.getPageSize());
		response.setPageNumber(request.getPageNumber());

		// Get the total number of records (it will be displayed in the grid).
		TypedQuery<Long> countQuery = buildSelectQuery(request, true, Long.class);
		int totalRowCount = countQuery.getSingleResult().intValue();
		response.setTotalRowCount(totalRowCount);

		// If there are no records that match the search criteria, return an empty response object.
		if (totalRowCount == 0) {
			response.setPageNumber(1);
			return response;
		}

		// The start index (the index of the first item of the page) should not be beyond the last item in the record set.
		int startIndex = (response.getPageNumber() - 1) * response.getPageSize();
		while (startIndex >= response.getTotalRowCount()) {
			startIndex -= response.getPageSize();
			response.setPageNumber(response.getPageNumber() - 1);
		}

		// Fetch the page from the DB.
		TypedQuery<T> query = buildSelectQuery(request, false, entityType);
		query.setMaxResults(response.getPageSize());
		query.setFirstResult(startIndex);
		List<T> records = query.getResultList();
		response.setRows(records);
		return response;
	}

	private <Q> TypedQuery<Q> buildSelectQuery(GridRequest request, boolean countOnly, Class<Q> queryType) throws ServiceException {

		String sortField = returnNullIfEmpty(request.getSortField());
		boolean sortDesc = request.getSortDesc();
		String searchField = returnNullIfEmpty(request.getSearchField());
		String searchValue = returnNullIfEmpty(request.getSearchValue());
		String searchOperation = returnNullIfEmpty(request.getSearchOperation());

		// Protection from "SQL injection" attacks.
		String searchOperationDecoded = checkAndDecodeOperation(searchOperation);
		checkFieldExists(searchField);
		checkFieldExists(sortField);

		boolean hasWhereClause = (searchField != null && searchOperation != null && searchValue != null);
		boolean hasOrderByClause = (!countOnly && sortField != null);

		String entityName = entityType.getSimpleName();
		String jpqlQuery = countOnly ? "SELECT COUNT(e) FROM " + entityName + " e" : "SELECT e FROM " + entityName + " e";

		if (hasWhereClause) {
			jpqlQuery += " WHERE " + searchField + " " + searchOperationDecoded + " :searchValue";
			searchValue = searchOperationDecoded.equals("LIKE") ? "%" + searchValue + "%" : searchValue;
		}
		if (hasOrderByClause) {
			jpqlQuery += " ORDER BY " + sortField;
			jpqlQuery += sortDesc ? " DESC" : "";
		}

		TypedQuery<Q> typedQuery = entityManager.createQuery(jpqlQuery, queryType);

		if (hasWhereClause) {
			Class<?> searchFieldType = findFieldType(searchField);

			if (searchFieldType.equals(String.class)) {
				typedQuery.setParameter("searchValue", searchValue);
			} else if (searchFieldType.equals(int.class)) {
				typedQuery.setParameter("searchValue", Integer.parseInt(searchValue));
			} else if (searchFieldType.equals(BigDecimal.class)) {
				// The user input always has "." as the decimal separator.
				typedQuery.setParameter("searchValue", new BigDecimal(searchValue.replaceAll(",", "")));
			}
		}

		return typedQuery;
	}

	private String returnNullIfEmpty(String str) {
		if (str == null) {
			return null;
		} else if (str.length() == 0) {
			return null;
		} else {
			return str;
		}
	}

	private void checkFieldExists(String fieldName) throws ServiceException {
		if (fieldName == null) {
			return;
		} else if (entityManager.getMetamodel().entity(entityType).getAttribute(fieldName) == null) {
			// The string is not a field name. It may be an "SQL injection" attack.
			throw new ServiceException(ServiceException.ErrorCode.EXCEPTION_INVALID_SEARCH_CRITERIA);
		}
	}

	private Class<?> findFieldType(String fieldName) {
		return entityManager.getMetamodel().entity(entityType).getAttribute(fieldName).getJavaType();
	}

	/**
	 * Operation codes (eq, lt, gt, cn, etc.) originate from jqGrid, but they are also used in the service layer API.
	 * */
	private String checkAndDecodeOperation(String operation) throws ServiceException {
		if (operation == null) {
			return null;
		} else if (operation.equals("eq")) {
			return "=";
		} else if (operation.equals("lt")) {
			return "<=";
		} else if (operation.equals("gt")) {
			return ">=";
		} else if (operation.equals("cn")) {
			return "LIKE";
		} else {
			// The string is not an operation code. It may be an "SQL injection" attack.
			throw new ServiceException(ServiceException.ErrorCode.EXCEPTION_INVALID_SEARCH_CRITERIA);
		}
	}
}
