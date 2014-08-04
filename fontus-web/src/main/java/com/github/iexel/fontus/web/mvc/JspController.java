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
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_about");
		return "about";
	}

	@RequestMapping(value = "/credits", method = RequestMethod.GET)
	public String credits(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_about");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_credits");
		return "credits";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(Model model, HttpServletResponse response, @RequestParam(required = false) String failed) {

		model.addAttribute("failed", failed);
		return "login";
	}

	// The error page should accept all HTTP methods as web.xml redirects all types of requests here.
	@RequestMapping(value = "/error/{errorId}")
	public String errorPage(@PathVariable("errorId") String errorId, Model model) {

		model.addAttribute("errorId", errorId);
		return "error";
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String products(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_products_and_invoices");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_products");
		return "products";
	}

	@RequestMapping(value = "/invoices", method = RequestMethod.GET)
	public String invoices(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_products_and_invoices");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_invoices");
		return "invoices";
	}

	@RequestMapping(value = "/admin-task-a", method = RequestMethod.GET)
	public String administrationTaskA(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_administration");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_administration_task_a");
		return "administration";
	}

	@RequestMapping(value = "/admin-task-b", method = RequestMethod.GET)
	public String administrationTaskB(Model model) {

		model.addAttribute("selectedMainMenuItemCode", "main_menu_administration");
		model.addAttribute("selectedLeftMenuItemCode", "left_menu_administration_task_b");
		return "administration";
	}
}