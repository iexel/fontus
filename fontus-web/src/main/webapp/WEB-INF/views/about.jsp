<%--
Copyright 2014 iexel

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

	http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


--%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:master-page selectedMainMenuItemCode="${selectedMainMenuItemCode}" selectedLeftMenuItemCode="${selectedLeftMenuItemCode}" locale="${springMvcLocale}">

<script src="resources/js/text-page.js"></script>

<div class=b-text-content>

<!-- start of generated HTML -->
<h3>
<a class="anchor" href="#introduction" aria-hidden="true"><span class="octicon octicon-link"></span></a>Introduction</h3>

<p>This project is a template/demo of a CRUD web application. It uses Spring Web MVC (a Java web framework) and jqGrid (an open source JavaScript grid). The application features internationalisation, user authentication/authorisation, RESTful web services, support for mobile browsers and a few more things that can be found in many web applications. It's my study project. I have published it <a href="https://github.com/iexel/fontus">on GitHub</a> in a hope that it may be useful to someone as a boilerplate for a new application or as a demo application that showcases the use of Spring MVC and jqGrid.</p>

<p>Why is it called Fontus? In the ancient Roman religion, Fontus was the god of wells and springs.</p>

<h3>
<a class="anchor" href="#online-deployment" aria-hidden="true"><span class="octicon octicon-link"></span></a>Online deployment</h3>

<p>You can check this web application online at <a href="http://demo.alexey.cloudbees.net">http://demo.alexey.cloudbees.net</a> (login: <code>admin</code>, password: <code>admin</code> for access to the protected pages). The free Java EE hosting at CloudBees provides limited resources, and the application can be slow at times.</p>

<h3>
<a class="anchor" href="#licensing" aria-hidden="true"><span class="octicon octicon-link"></span></a>Licensing</h3>

<p>This project is released under the <a href="https://github.com/iexel/fontus/blob/master/LICENSE">Apache Software License, Version 2.0</a>. All third party libraries used in the project are both Free and Open Source software. Most of the third-party images are in the Public Domain. A document that lists all third party components of the application and addresses their license requirements is included in both the source code distribution (<a href="https://github.com/iexel/fontus/blob/master/third-party-licenses.md">here</a>), and into the deployed application (<a href="http://demo.alexey.cloudbees.net/credits">here</a>). The list of third-party artifacts and their licenses is build semi-automatically with a help of the License Maven Plugin and a <a href="https://github.com/iexel/fontus/blob/master/license-maven-plugin-template.ftl">custom FreeMaker template</a>.</p>

<h3>
<a class="anchor" href="#building-the-project" aria-hidden="true"><span class="octicon octicon-link"></span></a>Building the project</h3>

<p>The application is a multi-module Maven project which consists of a parent and two child projects. Use <code>mvn clean package</code> to build the project, or <code>mvn clean verify</code> to build the project and run the integration tests. FireFox should be installed on the build computer to run the integration tests.</p>

<h3>
<a class="anchor" href="#technologies-used-in-this-application" aria-hidden="true"><span class="octicon octicon-link"></span></a>Technologies used in this application</h3>

<h4>
<a class="anchor" href="#short-list-of-technologies" aria-hidden="true"><span class="octicon octicon-link"></span></a>Short list of technologies</h4>

<p>Spring MVC, Java EE, RESTful Web Services, JPA, Hibernate, MySQL, HyperSQL, JSON, JSP, JSTL, HTML5, CSS3, jQuery, jQuery UI, JavaScript, AJAX, Tomcat, Maven, Selenium, Spring MVC Test Framework, JUnit, Mockito, Hamcrest.</p>

<h4>
<a class="anchor" href="#server-side-web-development-java-ee--spring-mvc-40" aria-hidden="true"><span class="octicon octicon-link"></span></a>Server-side web development (Java EE &amp; Spring MVC 4.0)</h4>

<p>The Spring MVC 4.0 framework is used in the application. Spring MVC is one of the most popular Java web frameworks (probably, the most popular). JSP pages (with JSTL and EL) are used as the view technology.</p>

<h4>
<a class="anchor" href="#restful-web-services" aria-hidden="true"><span class="octicon octicon-link"></span></a>RESTful web services</h4>

<p>RESTful web services are implemented with Spring MVC 4.0. The web services are used for two purposes:</p>

<ul class="task-list">
<li>to handle AJAX requests</li>
<li>as an external API</li>
</ul><h4>
<a class="anchor" href="#jqgrid-454" aria-hidden="true"><span class="octicon octicon-link"></span></a>JqGrid 4.5.4</h4>

<p>jqGrid is an open source AJAX data grid which is based on jQuery and jQuery UI. It renders a grid using JavaScript (the HTML just defines two <code>&lt;div&gt;</code> tags as a point of attachment for the grid). The grid uses a RESTful web service  for CRUD operations. As jqGrid is based on jQuery UI, its look can be customised with jQuery UI themes.</p>

<p>The configuration and customisation of jqGrid is one of the most interesting parts of this demo application as it's an example of Spring MVC/jqGrid integration. The customised grid has the following features:</p>

<ul class="task-list">
<li>It uses RESTful web services (RESTful URLs, <code>GET</code>/<code>POST</code>/<code>PUT</code>/<code>DELETE</code> HTTP methods, JSON responses).</li>
<li>It can display server side data validation errors generated by Spring MVC.</li>
<li>It correctly handles AJAX error responses.</li>
<li>It is tuned (with CSS and JavaScript) to have an acceptable look in all major browsers.</li>
<li>Some other things...</li>
</ul><h4>
<a class="anchor" href="#hierarchical-templating" aria-hidden="true"><span class="octicon octicon-link"></span></a>Hierarchical templating</h4>

<p>Each web page consists of hierarchical blocks (header, footer, menu, master-page, etc.). JSP <code>.tag</code> files are used for templating (as an alternative to third party frameworks such as Apache Tiles). See <a href="http://stackoverflow.com/a/3257426/2842067">this</a> StackOverflow answer for details on using <code>.tag</code> files for templating.</p>

<h4>
<a class="anchor" href="#authentication-and-authorisation" aria-hidden="true"><span class="octicon octicon-link"></span></a>Authentication and authorisation</h4>

<p>Spring Security 3.2 framework is used to restrict user access to web pages and web servises on per-role basis. Some pages change their appearance depending on the user's permissions.</p>

<h4>
<a class="anchor" href="#internationalisation-and-localisation" aria-hidden="true"><span class="octicon octicon-link"></span></a>Internationalisation and localisation</h4>

<p>The application has been internationalised (the capabilities of Spring MVC are used for internationalisation) and localised for two languages.</p>

<h4>
<a class="anchor" href="#user-input-validation" aria-hidden="true"><span class="octicon octicon-link"></span></a>User input validation</h4>

<p>User input is validated server-side (with Spring MVC and JSR-303). I explained how validation errors are displayed in jqGrid in <a href="http://stackoverflow.com/q/21808706/2842067">this</a> StackOverflow question.</p>

<h4>
<a class="anchor" href="#error-processing" aria-hidden="true"><span class="octicon octicon-link"></span></a>Error processing</h4>

<p>On the server side, most of the Java exceptions (including business exceptions and user input validation exceptions) are handled with Spring MVC (the <code>@ExceptionHandler</code> annotation). The errors and exceptions that cannot be handled with Spring MVC are handled the JSP/Java EE way: with the mapping in the <code>web.xml</code> file.</p>

<p>If an error happens while the web server is processing a request that should return a complete HTML page, the user is redirected to an error page. If an error happens while an AJAX request is processed, the server returns JSON that describes the error. On the client side, depending on the severity of the error, the error is either processed centrally (and the user is shown a dedicated error page) or locally (the user is shown an error message but stays on the current page).</p>

<p>“Session has expired” errors result in redirecting to the login page.</p>

<h4>
<a class="anchor" href="#javascript-libraries" aria-hidden="true"><span class="octicon octicon-link"></span></a>JavaScript libraries</h4>

<p>The following third-party JavaScript libraries are used in the application: jQuery, jQuery UI, jqGrid, mmenu, and Layout Engine. The use of jQuery UI is limited; most of the HTML is manually coded, and styled with CSS.</p>

<h4>
<a class="anchor" href="#mobile-phones-and-tablets" aria-hidden="true"><span class="octicon octicon-link"></span></a>Mobile phones and tablets</h4>

<p>The application has a fluid and responsive HTML layout which adapts well to mobile phone and tablet screens. The responsiveness is implemented using CSS media queries. A separate compact mobile menu is used on narrow screens.</p>

<h4>
<a class="anchor" href="#logging-framework" aria-hidden="true"><span class="octicon octicon-link"></span></a>Logging framework</h4>

<p>The application uses slf4j API with log4j implementation for logging.</p>

<h4>
<a class="anchor" href="#web-server" aria-hidden="true"><span class="octicon octicon-link"></span></a>Web server</h4>

<p>The application has been tested in Tomcat 7. It should work in any other servlet container/Java EE application server.</p>

<h4>
<a class="anchor" href="#db-access" aria-hidden="true"><span class="octicon octicon-link"></span></a>DB access</h4>

<p>The Hibernate implementation of JPA is used for DB access. The deployed application uses MySQL. The integration tests employ an in-memory DB (HyperSQL).</p>

<h4>
<a class="anchor" href="#browser-compatibility" aria-hidden="true"><span class="octicon octicon-link"></span></a>Browser compatibility</h4>

<p>Supported desktop browsers: the current version and the second last version of FireFox, Chrome and Opera; Safari 5.0+, IE 9+</p>

<p>Mobile browsers: Android Browser (AOSP) 2.3+, Chrome for Mobile; Mobile Safari (partly)</p>

<h4>
<a class="anchor" href="#regression-testing" aria-hidden="true"><span class="octicon octicon-link"></span></a>Regression testing</h4>

<p>The project employs the following tests:</p>

<ul class="task-list">
<li>GUI integration tests (Selenium, JUnit, Hamcrest)</li>
<li>Integration tests for the RESTful web service (JUnit, Hamcrest, JasonPath, Spring MVC Test Framework)</li>
<li>Unit tests for Spring MVC controllers - web pages and the RESTful web service (JUnit, Mockito, Hamcrest, Spring MVC Test Framework)</li>
</ul><h4>
<a class="anchor" href="#import-to-eclipse-and-deployment-to-tomcat" aria-hidden="true"><span class="octicon octicon-link"></span></a>Import to Eclipse and deployment to Tomcat</h4>

<p>After importing the three Maven projects to Eclipse:</p>

<ul class="task-list">
<li>Change the encoding to <code>UTF-8</code> in the properties of localisation files (<code>messages_ru.properties</code> and <code>messages.properties</code>). Spring MVC is configured to read these files in <code>UTF-8</code>.</li>
<li>Exclude the content of the <code>fontus-web/src/main/webapp/resources/js/libs/</code> directory from JavaScript validation (third-party libraries tend to produce validation warnings). In the <code>fontus-web</code> project properties select <code>JavaScript</code> &gt; <code>Include Path</code>, click the <code>Source</code> tab, select the <code>Excluded</code> node, press <code>Edit...</code> button, and add the directory into the <code>Exclusion patterns</code> section.</li>
<li>Add the following JNDI data source in the <code>context.xml</code> file in your Tomcat installation (see <a href="http://tomcat.apache.org/tomcat-7.0-doc/jndi-resources-howto.html">this document</a> for the full list of the data source options):</li>
</ul>

<div class="highlight highlight-xml">
	<pre>    
    &lt;Context&gt;
        &lt;Resource name="jdbc/FONTUS"
            auth="Container"
            type="javax.sql.DataSource"
            driverClassName="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/YOUR_DB_NAME?useUnicode=yes&amp;characterEncoding=UTF-8"
            username="your_user_name"
            password="your_password" /&gt;
    &lt;/Context&gt;
	</pre>
</div>
<!-- end of generated HTML -->


</div>
</t:master-page>
