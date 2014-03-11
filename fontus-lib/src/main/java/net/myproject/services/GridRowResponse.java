package net.myproject.services;

public class GridRowResponse {
	protected int id;
	protected long timestamp;

	public GridRowResponse() {
	}

	public GridRowResponse(int id, long timestamp) {
		this.id = id;
		this.timestamp = timestamp;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public long getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(long timestamp) {
		this.timestamp = timestamp;
	}
}