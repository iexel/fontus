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

package net.myproject.jqgrid;

import java.util.List;

import net.myproject.services.GridResponse;

public class JqGridResponse<T> {

	private int total; // number of pages
	private int page; // page number
	private int records; // number of records
	private List<T> rows; // records

	public JqGridResponse() {

	}

	public JqGridResponse(GridResponse<T> dataResponse) {

		this.rows = dataResponse.getRows();
		this.page = dataResponse.getPageNumber();
		this.total = dataResponse.getTotalPageCount();
		this.records = dataResponse.getTotalRowCount();
	}

	public int getTotal() {
		return total;
	}

	public int getPage() {
		return page;
	}

	public int getRecords() {
		return records;
	}

	public List<T> getRows() {
		return rows;
	}
}
