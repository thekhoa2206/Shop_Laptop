package com.devpro.entities;

public class AjaxResponse {
private int status;
private Object data;

	public AjaxResponse(int status, Object data) {
		super();
		this.status = status;
		this.data = data;
	}
	
	public Object getData() {
		return data;
	}
	
	public void setData(Object data) {
		this.data = data;
	}
	
	public int getStatus() {
		return status;
	}
	
	public void setStatus(int status) {
		this.status = status;
	}
}