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

package com.github.iexel.fontus.web;

import java.math.BigDecimal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import com.github.iexel.fontus.services.IProductsService;
import com.github.iexel.fontus.services.Product;
import com.github.iexel.fontus.services.ServiceException;

@Component
public class ApplicationListenerBean implements ApplicationListener<ContextRefreshedEvent> {

	@Autowired
	private IProductsService productsService;

	private static boolean initialised = false;

	@Override
	public void onApplicationEvent(ContextRefreshedEvent event) {

		if (!initialised) {
			populateDB();
			initialised = true;
		}
	}

	private void populateDB() {
		try {
			productsService.createProduct(new Product(0, "Java SE (book)", new BigDecimal("40.50")));
			productsService.createProduct(new Product(0, "Spring MVC (book)", new BigDecimal("52.00")));
			productsService.createProduct(new Product(0, "Oracle (book)", new BigDecimal("31.20")));
			productsService.createProduct(new Product(0, "SQL (book)", new BigDecimal("45.50")));
			productsService.createProduct(new Product(0, "Spring (book)", new BigDecimal("51.00")));
			productsService.createProduct(new Product(0, "PHP (book)", new BigDecimal("33.20")));
			productsService.createProduct(new Product(0, "HTML (book)", new BigDecimal("41.50")));
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}
}