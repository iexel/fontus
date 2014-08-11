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

package com.github.iexel.fontus.web.mvc;

import java.security.Principal;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.github.iexel.fontus.web.jqgrid.AjaxError;

@ControllerAdvice("com.github.iexel.fontus.web.mvc")
public class GlobalControllerAdviceMvc {

	private final Logger logger = LoggerFactory.getLogger(GlobalControllerAdviceMvc.class);

	@ModelAttribute
	public void loginModel(Model model, Locale locale, Principal principal) {

		if (principal != null) {
			model.addAttribute("userName", principal.getName());
		}

		// model.addAttribute("springMvcLocale", locale.getLanguage());
		model.addAttribute("userLocale", locale);
	}

	@ResponseStatus(HttpStatus.BAD_REQUEST)
	@ExceptionHandler(Throwable.class)
	public String handle(Throwable ex) {

		logger.error(null, ex);
		AjaxError ajaxError = new AjaxError();
		ajaxError.setGlobalErrorCode("error_unexpected");
		return "forward:/error/error_unexpected";
	}
}