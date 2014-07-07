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

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

import java.util.concurrent.TimeUnit;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

/**
 * This class contains Selenium GUI tests
 */
public class SeleniumIT {
	private WebDriver driver;
	private String baseUrl;

	@Before
	public void setUp() throws Exception {

		// System.setProperty("webdriver.chrome.driver", "/home/user/chromedriver");
		// driver = new ChromeDriver();

		driver = new FirefoxDriver();

		baseUrl = "http://localhost:8080/fontus-web";
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.manage().window().maximize();
	}

	@Test
	public void testProductsPage() throws Exception {
		// the delay is for an increased dramatic effect only :)
		int demoWaitTime = 2000;

		driver.get(baseUrl + "/about");
		driver.findElement(By.linkText("Products & Invoices")).click();

		driver.findElement(By.id("j_username")).clear();
		driver.findElement(By.id("j_username")).sendKeys("admin");
		driver.findElement(By.id("j_password")).clear();
		driver.findElement(By.id("j_password")).sendKeys("admin");
		Thread.sleep(demoWaitTime);
		driver.findElement(By.cssSelector("input.button")).click();
		Thread.sleep(demoWaitTime);

		driver.findElement(By.xpath("//tr[@id='4']/td[2]")).click();
		driver.findElement(By.id("editBtn")).click();
		Thread.sleep(demoWaitTime);
		driver.findElement(By.id("name")).clear();
		driver.findElement(By.id("price")).clear();
		driver.findElement(By.id("price")).sendKeys("45.50 a");
		Thread.sleep(demoWaitTime);
		driver.findElement(By.id("sData")).click();
		Thread.sleep(demoWaitTime);

		assertPresent("#tr_name .field-error-message");
		assertPresent("#tr_price .field-error-message");

		driver.findElement(By.id("cData")).click();
		Thread.sleep(demoWaitTime);

		driver.findElement(By.id("editBtn")).click();
		Thread.sleep(demoWaitTime);
		driver.findElement(By.id("price")).clear();
		driver.findElement(By.id("price")).sendKeys("45.51");
		Thread.sleep(demoWaitTime);
		driver.findElement(By.id("sData")).click();
		Thread.sleep(demoWaitTime);
		driver.findElement(By.cssSelector("span.ui-icon.ui-icon-seek-next")).click();
		Thread.sleep(demoWaitTime);
		driver.findElement(By.cssSelector("span.ui-icon.ui-icon-seek-prev")).click();
		Thread.sleep(demoWaitTime);

		assertEquals("$ 45.51", driver.findElement(By.xpath("//tr[@id='4']/td[3]")).getText());

		driver.findElement(By.xpath("//tr[@id='4']/td[2]")).click();
		driver.findElement(By.id("editBtn")).click();
		Thread.sleep(demoWaitTime);
		driver.findElement(By.id("price")).clear();
		driver.findElement(By.id("price")).sendKeys("45.50");
		Thread.sleep(demoWaitTime);
		driver.findElement(By.id("sData")).click();
		Thread.sleep(demoWaitTime);
		driver.findElement(By.cssSelector("span.ui-icon.ui-icon-seek-next")).click();
		Thread.sleep(demoWaitTime);
		driver.findElement(By.cssSelector("span.ui-icon.ui-icon-seek-prev")).click();

		assertEquals("$ 45.50", driver.findElement(By.xpath("//tr[@id='4']/td[3]")).getText());

		Thread.sleep(demoWaitTime);
		driver.findElement(By.linkText("Logout: admin")).click();
	}

	@After
	public void tearDown() throws Exception {
		driver.quit();
	}

	void assertPresent(String cssSelector) {
		assertTrue("No element matching the following CSS selector was found: " + cssSelector, driver.findElements(By.cssSelector(cssSelector)).size() != 0);
	}
}