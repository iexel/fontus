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

package net.myproject.services;

import java.util.List;

public class GridResponse<T> {
	protected List<T> rows;
	protected int pageNumber;
	protected int pageSize;
	protected int totalRowCount;

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> pageRows) {
		this.rows = pageRows;
	}

	public int getPageNumber() {
		return pageNumber;
	}

	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getTotalRowCount() {
		return totalRowCount;
	}

	public void setTotalRowCount(int totalRowCount) {
		this.totalRowCount = totalRowCount;
	}

	public int getTotalPageCount() {
		int pageCount = divideAndRoundUp(totalRowCount, pageSize);
		pageCount = pageCount > 0 ? pageCount : 1;
		return pageCount;
	}

	protected static int divideAndRoundUp(int num, int divisor) {
		return (num + divisor - 1) / divisor;
	}
}
