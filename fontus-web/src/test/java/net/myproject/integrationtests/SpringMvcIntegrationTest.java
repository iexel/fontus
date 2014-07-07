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

package net.myproject.integrationtests;

import static org.hamcrest.Matchers.equalTo;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.delete;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.put;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * This class contains integration tests that use Spring MVC Test Framework. The framework emulates HTTP requests (without doing them - inside Java VM). The tests do not require deploying the
 * application to Tomcat, thus they are executed in Maven's "test" phase and not in "integration-test".
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring-mvc-servlet.xml")
public class SpringMvcIntegrationTest {

	private MockMvc mockMvc;

	@Autowired
	private WebApplicationContext wac;

	@Before
	public void setup() {
		this.mockMvc = MockMvcBuilders.webAppContextSetup(this.wac).build();
	}

	/**
	 * Test one of the web pages.
	 */
	@Test
	public void testProductsPage() throws Exception {

		MockHttpServletRequestBuilder b = get("/products");
		b.accept(MediaType.TEXT_HTML);
		ResultActions r = this.mockMvc.perform(b);

		r.andDo(print());
		r.andExpect(status().isOk());
		r.andExpect(view().name("products"));
		r.andExpect(model().attributeExists("userLocale"));
		r.andExpect(model().attribute("selectedMainMenuItemCode", "main_menu_products_and_invoices"));
		r.andExpect(model().attribute("selectedLeftMenuItemCode", "left_menu_products"));
	}

	/**
	 * Test the external web service.
	 */
	@Test
	public void testRestService() throws Exception {

		MockHttpServletRequestBuilder m;
		ResultActions r;

		// Create a new record
		m = post("/rest/products");
		m.contentType(MediaType.APPLICATION_JSON);
		m.accept(MediaType.APPLICATION_JSON);
		m.content("{\"name\":\"A record created by automated test\", \"price\":10.00, \"timestamp\":0}");
		r = this.mockMvc.perform(m);
		r.andDo(print());
		r.andExpect(status().isOk());

		// Update the new record
		MvcResult result = r.andReturn();
		String resultStr = result.getResponse().getContentAsString();
		ObjectMapper mapper = new ObjectMapper();
		JsonNode rootNode = mapper.readTree(resultStr);
		JsonNode nameNode = rootNode.path("id");
		int id = nameNode.asInt();
		JsonNode timestampNode = rootNode.path("timestamp");
		String timestamp = timestampNode.asText();

		// Get the new record's id and timestamp
		m = put("/rest/products/" + id);
		m.contentType(MediaType.APPLICATION_JSON);
		m.accept(MediaType.APPLICATION_JSON);
		m.content("{\"name\":\"Updated by automated test\", \"price\":20.00, \"timestamp\":" + timestamp + "}");
		r = this.mockMvc.perform(m);
		r.andDo(print());
		r.andExpect(status().isOk());

		// Get all records, and check that the new record is present and contains correct data
		m = get("/rest/products?rows=100&page=1&sidx=id&sord=asc");
		m.accept(MediaType.APPLICATION_JSON);
		r = this.mockMvc.perform(m);
		r.andDo(print());
		r.andExpect(status().isOk());
		r.andExpect(jsonPath("$.page", equalTo(1)));
		// ?(@.id==8) - select all rows with id=8, and [0] - get the first of these rows
		r.andExpect(jsonPath("$.rows[?(@.id==8)][0].name", equalTo("Updated by automated test")));

		// Delete the test record
		m = delete("/rest/products/" + id);
		m.accept(MediaType.APPLICATION_JSON);
		r = this.mockMvc.perform(m);
		r.andDo(print());
		r.andExpect(status().isOk());
	}
}
