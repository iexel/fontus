package net.myproject.services;

public class GridRequest {
	protected int pageNumber;
	protected int pageSize;

	protected String sortField;
	protected boolean sortDesc;

	protected String searchField;
	protected String searchValue;
	protected String searchOperation;

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

	public String getSortField() {
		return sortField;
	}

	public void setSortField(String sortField) {
		this.sortField = sortField;
	}

	public boolean getSortDesc() {
		return sortDesc;
	}

	public void setSortDesc(boolean sortDesc) {
		this.sortDesc = sortDesc;
	}

	public String getSearchField() {
		return searchField;
	}

	public void setSearchField(String searchField) {
		this.searchField = searchField;
	}

	public String getSearchValue() {
		return searchValue;
	}

	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}

	public String getSearchOperation() {
		return searchOperation;
	}

	public void setSearchOperation(String searchOperation) {
		this.searchOperation = searchOperation;
	}
}
