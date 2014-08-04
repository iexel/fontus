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

package com.github.iexel.fontus.web.rest;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.http.HttpStatus;
import org.springframework.validation.BindException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.github.iexel.fontus.services.ServiceException;
import com.github.iexel.fontus.web.jqgrid.AjaxError;

@ControllerAdvice("com.github.iexel.fontus.web.rest")
public class GlobalControllerAdviceRest {

	@Autowired
	private MessageSource messageSource;

	@ResponseBody
	@ResponseStatus(HttpStatus.BAD_REQUEST)
	@ExceptionHandler(BindException.class)
	public AjaxError handle(BindException ex, Locale locale) {

		BindingResult bindingResult = ex.getBindingResult();
		AjaxError ajaxError = new AjaxError();
		ajaxError.setValidationErrors(fetchValidationErrorsAsStringArray(bindingResult, locale));
		ajaxError.setLocalErrorMessage(fetchErrorMessage("jggrid_validation_error_message", locale));
		return ajaxError;
	}

	@ResponseBody
	@ResponseStatus(HttpStatus.BAD_REQUEST)
	@ExceptionHandler(ServiceException.class)
	public AjaxError handle(ServiceException ex, Locale locale) {

		AjaxError ajaxError = new AjaxError();
		ajaxError.setLocalErrorMessage(fetchErrorMessage(ex.getErrorCode().toString(), locale));
		return ajaxError;
	}

	@ResponseBody
	@ResponseStatus(HttpStatus.BAD_REQUEST)
	@ExceptionHandler(Throwable.class)
	public AjaxError handle(Throwable ex) {

		AjaxError ajaxError = new AjaxError();
		ajaxError.setGlobalErrorCode("error_unexpected");
		return ajaxError;
	}

	private String[] fetchValidationErrorsAsStringArray(BindingResult bindingResult, Locale locale) {

		String[] errorArray = null;

		if (bindingResult.hasErrors()) {
			List<FieldError> errors = bindingResult.getFieldErrors();
			errorArray = new String[errors.size() * 2];
			int counter = 0;

			for (FieldError error : errors) {
				errorArray[counter] = error.getField();
				errorArray[counter + 1] = messageSource.getMessage(error, locale);
				counter += 2;
			}
		}
		return errorArray;
	}

	private String fetchErrorMessage(String errorCode, Locale locale) {
		return messageSource.getMessage(errorCode, null, "Unexpected error.", locale);
	}
}