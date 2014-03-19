package net.myproject.mvc;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class JspController {

	final Logger logger = LoggerFactory.getLogger(JspController.class);

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String root(RedirectAttributes redirectAttributes) {

		logger.info("The root URL controller method.");

		return "redirect:about";
	}

	@RequestMapping(value = "/about", method = RequestMethod.GET)
	public String about(Model model) {

		logger.info("The /about/ page controller method.");

		model.addAttribute("selectedMainMenuItemCode", "main_menu_about");
		model.addAttribute("selectedLeftMenuItemCode", "");
		return "about";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(Model model, HttpServletResponse response, @RequestParam(required = false) String failed) {

		response.setHeader("LoginPageResponseFlag", "true");
		model.addAttribute("failed", failed);
		return "login";
	}

	@RequestMapping(value = "/error/{errorId}", method = RequestMethod.GET)
	public String errorPage(@PathVariable("errorId") String errorId, Model model) {

		model.addAttribute("errorId", errorId);
		return "error";
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_products_and_orders");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_products");
		return "products";
	}

	@RequestMapping(value = "/orders", method = RequestMethod.GET)
	public String orders(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_products_and_orders");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_orders");
		return "under-construction";
	}

	@RequestMapping(value = "/admin-task-a", method = RequestMethod.GET)
	public String administrationTaskA(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_administration");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_administration_task_a");
		return "under-construction";
	}

	@RequestMapping(value = "/admin-task-b", method = RequestMethod.GET)
	public String administrationTaskB(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_administration");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_administration_task_b");
		return "under-construction";
	}
}