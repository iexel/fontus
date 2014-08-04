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

package com.github.iexel.fontus.web.jqgrid;

public class AjaxError {
	private String globalErrorCode;
	private String localErrorMessage;
	private String[] validationErrors;

	public String getLocalErrorMessage() {
		return localErrorMessage;
	}

	public void setLocalErrorMessage(String localErrorMessage) {
		this.localErrorMessage = localErrorMessage;
	}

	public String getGlobalErrorCode() {
		return globalErrorCode;
	}

	public void setGlobalErrorCode(String globalErrorCode) {
		this.globalErrorCode = globalErrorCode;
	}

	public String[] getValidationErrors() {
		return validationErrors;
	}

	public void setValidationErrors(String[] validationErrors) {
		this.validationErrors = validationErrors;
	}
}
