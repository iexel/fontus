package net.myproject.mvc;

import java.security.Principal;
import java.util.Locale;

import net.myproject.jqgrid.AjaxError;

import org.springframework.http.HttpStatus;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.ResponseStatus;

@ControllerAdvice("net.myproject.mvc")
public class GlobalControllerAdviceMvc {

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

		AjaxError ajaxError = new AjaxError();
		ajaxError.setGlobalErrorCode("error_unexpected");
		return "forward:/error/error_unexpected";
	}
}