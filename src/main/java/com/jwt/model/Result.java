package com.jwt.model;

/**
 * Created by prem on 11/01/17.
 */
public class Result {

    private String message;
    private boolean status;
    private Object resultObject;

    public Result() {
    }

    public Result(String message, boolean status) {
        this.message = message;
        this.status = status;
    }

    public Result(Object resultObject, boolean status) {
        this.resultObject = resultObject;
        this.status = status;
    }

    public Result(String message, boolean status, Object resultObject) {
        this.message = message;
        this.status = status;
        this.resultObject = resultObject;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Object getResultObject() {
        return resultObject;
    }

    public void setResultObject(Object resultObject) {
        this.resultObject = resultObject;
    }
}
