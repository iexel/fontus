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

<script>
// resizing code blocks
$(document).ready(function() {
	$(window).resize(resizeCodeBlocks);
	resizeCodeBlocks();
});

function resizeCodeBlocks() {

	var width = $(window).width();
	var isLeftPanelDisplay = $(".b-left-panel").css("display");
	
	if(isLeftPanelDisplay == "none") {
		$(".b-text-content").width(width - 45);
	} else {
		$(".b-text-content").width(width - 380);
	}
}
</script>

<div class=b-text-content>

<h3>
<a class="anchor" href="#credits-and-third-party-licensing-information"><span class="octicon octicon-link"></span></a>Credits and third party licensing information</h3>

<p>All third party libraries used in this project are both Free and Open Source software. Most of third-party images are in the Public Domain. </p>

<p>This document lists the libraries and images used in the project, provides the text of their licenses and any notices that should be provided under the terms of these licenses. The document also explains how the source code of the libraries can be obtained. </p>

<p>Some libraries and images were released with more than one license by their copyright holders. This document lists all licenses available for a library/image; the license chosen by this project is marked with <strong>bold font</strong> or explicitly specified in the text. </p>

<p>Most Java libraries are not distributed with the source code version of this project. They are downloaded by Maven at build time. However, they are a part of the distribution when a binary version of this project (a <code>.war</code> file) is distributed. Some libraries used for unit testing are never distributed with any version of this project. They are downloaded by Maven and used at build time only. These libraries have an appropriate comment in their description. </p>

<p>In this document, some third-party libraries and images have their license texts provided directly below their description. Others refer to licenses provided in a separate section of this document. Usually, if a library/image has its license text provided directly below its description (specifically for this library/image), the license has some modifications that are specific to this  library/image (e.g. a copyright notice, additional terms, or additional licenses for its subcomponents).</p>

<h3>
<a class="anchor" href="#source-code"><span class="octicon octicon-link"></span></a>Source code</h3>

<p>The source code of most third-party Maven artifacts can be downloaded from the <a href="http://search.maven.org/">Maven Central Repository</a>. All Maven artifacts that have to be distributed with their source code (according to their license requirements) have their source code available this way. To download the source code and/or JavaDoc: </p>

<ul>
<li>Click <code>Advanced Search</code> on the front page of the <a href="http://search.maven.org/">Maven Central Repository</a>. </li>
<li>Enter <code>GroupId</code>, <code>ArtifactId</code> and <code>Version</code> of the Maven artifact and click <code>SEARCH</code>. </li>
<li>The search results will contain links for downloading the binary artifact, its source code, and JavaDoc. </li>
</ul><h3>
<a class="anchor" href="#css-libraries"><span class="octicon octicon-link"></span></a>CSS libraries</h3>

<h4>
<a class="anchor" href="#eric-meyers-css-reset"><span class="octicon octicon-link"></span></a>Eric Meyer's CSS Reset</h4>

<p><strong>Project URL:</strong>  <a href="http://meyerweb.com/eric/tools/css/reset/">http://meyerweb.com/eric/tools/css/reset/</a><br><strong>License names:</strong>   (Public Domain)<br><strong>Source of the notice and license information:</strong> the header of the CSS file<br></p>

<h3>
<a class="anchor" href="#javascript-libraries"><span class="octicon octicon-link"></span></a>JavaScript libraries</h3>

<h4>
<a class="anchor" href="#jquery-javascript-library-v1102"><span class="octicon octicon-link"></span></a>jQuery JavaScript Library v1.10.2</h4>

<p><strong>Project URL:</strong>  <a href="http://jquery.com/">http://jquery.com/</a><br><strong>License names:</strong>  (MIT License)<br><strong>Source of the notice and license information:</strong>  the header of the JavaScript file<br><strong>Notice:</strong> </p>

<pre><code>Includes Sizzle.js 
http://sizzlejs.com/ 
</code></pre>

<p><strong>License:</strong> </p>

<pre><code> Copyright (c) 2005, 2013 jQuery Foundation, Inc. and other contributors 

 Permission is hereby granted, free of charge, to any person obtaining 
 a copy of this software and associated documentation files (the 
 "Software"), to deal in the Software without restriction, including 
 without limitation the rights to use, copy, modify, merge, publish, 
 distribute, sublicense, and/or sell copies of the Software, and to 
 permit persons to whom the Software is furnished to do so, subject to 
 the following conditions: 

 The above copyright notice and this permission notice shall be included 
 in all copies or substantial portions of the Software. 

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
 MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
 IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
 CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
 TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.        
</code></pre>

<h4>
<a class="anchor" href="#jquery-ui---v1103"><span class="octicon octicon-link"></span></a>jQuery UI - v1.10.3</h4>

<p><strong>Project URL:</strong>  <a href="http://jqueryui.com">http://jqueryui.com</a><br><strong>License names:</strong>  (MIT License)<br><strong>Source of the notice and license information:</strong>  the header of the JavaScript file<br><strong>Notice:</strong> </p>

<pre><code>Includes: jquery.ui.core.js, jquery.ui.widget.js, jquery.ui.mouse.js, 
jquery.ui.position.js, jquery.ui.draggable.js, jquery.ui.droppable.js, 
jquery.ui.resizable.js, jquery.ui.selectable.js, jquery.ui.sortable.js, 
jquery.ui.accordion.js, jquery.ui.autocomplete.js, jquery.ui.button.js, 
jquery.ui.datepicker.js, jquery.ui.dialog.js, jquery.ui.menu.js, 
jquery.ui.progressbar.js, jquery.ui.slider.js, jquery.ui.spinner.js, 
jquery.ui.tabs.js, jquery.ui.tooltip.js, jquery.ui.effect.js, 
jquery.ui.effect-blind.js, jquery.ui.effect-bounce.js, 
jquery.ui.effect-clip.js, jquery.ui.effect-drop.js, 
jquery.ui.effect-explode.js, jquery.ui.effect-fade.js, 
jquery.ui.effect-fold.js, jquery.ui.effect-highlight.js, 
jquery.ui.effect-pulsate.js, jquery.ui.effect-scale.js, 
jquery.ui.effect-shake.js, jquery.ui.effect-slide.js, 
jquery.ui.effect-transfer.js 
</code></pre>

<p><strong>License:</strong> </p>

<pre><code> Copyright 2013 jQuery Foundation and other contributors 

 Permission is hereby granted, free of charge, to any person obtaining 
 a copy of this software and associated documentation files (the 
 "Software"), to deal in the Software without restriction, including 
 without limitation the rights to use, copy, modify, merge, publish, 
 distribute, sublicense, and/or sell copies of the Software, and to 
 permit persons to whom the Software is furnished to do so, subject to 
 the following conditions: 

 The above copyright notice and this permission notice shall be included 
 in all copies or substantial portions of the Software. 

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
 MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
 IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
 CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
 TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.        
</code></pre>

<h4>
<a class="anchor" href="#jqgrid--454---jquery-grid"><span class="octicon octicon-link"></span></a>jqGrid  4.5.4 - jQuery Grid</h4>

<p><strong>Project URL:</strong>  <a href="http://www.trirand.com">http://www.trirand.com</a><br><strong>License names:</strong>  (<strong>MIT License</strong>), (GNU General Public License, Version 2)<br><strong>Source of the notice and license information:</strong>  the header of the JavaScript file<br><strong>License:</strong> </p>

<pre><code> Copyright (c) 2008, Tony Tomov, tony@trirand.com 

 Permission is hereby granted, free of charge, to any person obtaining 
 a copy of this software and associated documentation files (the 
 "Software"), to deal in the Software without restriction, including 
 without limitation the rights to use, copy, modify, merge, publish, 
 distribute, sublicense, and/or sell copies of the Software, and to 
 permit persons to whom the Software is furnished to do so, subject to 
 the following conditions: 

 The above copyright notice and this permission notice shall be included 
 in all copies or substantial portions of the Software. 

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, 
 EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
 MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
 IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
 CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
 TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.        
</code></pre>

<h3>
<a class="anchor" href="#images"><span class="octicon octicon-link"></span></a>Images</h3>

<p>The <code>img</code> directory that contains all images used in the project has a <code>source_images</code> subdirectory. <code>source_images</code> contains a copy of every image unchanged (as it was downloaded from its source). The file names of the source images are also preserved (however a suffix was added to some of them which indicates the image's resolution; e.g., <code>_48x48</code>). In this section, images are referenced by their original (unmodified) file names. </p>

<h4>
<a class="anchor" href="#applications-development-3png-emblem-important-2png-emblem-important-2_48x48png-applications-internet-3png"><span class="octicon octicon-link"></span></a>applications-development-3.png, emblem-important-2.png, emblem-important-2_48x48.png, applications-internet-3.png</h4>

<p><strong>Source:</strong>  <a href="http://openiconlibrary.sourceforge.net/">http://openiconlibrary.sourceforge.net/</a><br><strong>Author:</strong>  tango<br><strong>License names:</strong>  (Public Domain)<br><strong>Source of the notice and license information:</strong>  the license information file distributed with the icon package <br></p>

<h4>
<a class="anchor" href="#flag-gbpng-flag-rupng"><span class="octicon octicon-link"></span></a>flag-gb.png, flag-ru.png</h4>

<p><strong>Source:</strong>  <a href="http://openiconlibrary.sourceforge.net/">http://openiconlibrary.sourceforge.net/</a><br><strong>Author:</strong>  wiki_commons_pd<br><strong>License names:</strong>  (Public Domain)<br><strong>Source of the notice and license information:</strong>  the license information file distributed with the icon package <br></p>

<h4>
<a class="anchor" href="#appointmentsvg"><span class="octicon octicon-link"></span></a>Appointment.svg</h4>

<p><strong>Source:</strong>  <a href="http://commons.wikimedia.org/wiki/File:Appointment.svg">http://commons.wikimedia.org/wiki/File:Appointment.svg</a><br><strong>Author:</strong>  Inductiveload<br><strong>License names:</strong>  (Public Domain)<br><strong>Source of the notice and license information:</strong>  <a href="http://commons.wikimedia.org/wiki/File:Appointment.svg">http://commons.wikimedia.org/wiki/File:Appointment.svg</a><br></p>

<h3>
<a class="anchor" href="#maven-dependencies"><span class="octicon octicon-link"></span></a>Maven dependencies</h3>

<p>This section lists Maven artifacts (Java libraries) referenced in the project. Some artifacts may in turn include third-party Java libraries. See individual artifact licenses for details. </p>

<p>The project uses 34 Maven artifacts: </p>

<h4>
<a class="anchor" href="#aop-alliance"><span class="octicon octicon-link"></span></a>AOP alliance</h4>

<p><strong>Maven artifact:</strong>  groupId: aopalliance,  artifactId: aopalliance,  version: 1.0<br><strong>Project URL:</strong>  <a href="http://aopalliance.sourceforge.net">http://aopalliance.sourceforge.net</a><br><strong>License names:</strong>   (Public Domain)<br><strong>Source of the notice and license information:</strong> <a href="http://aopalliance.sourceforge.net/">http://aopalliance.sourceforge.net/</a><br></p>

<h4>
<a class="anchor" href="#classmate"><span class="octicon octicon-link"></span></a>ClassMate</h4>

<p><strong>Maven artifact:</strong>  groupId: com.fasterxml,  artifactId: classmate,  version: 1.0.0<br><strong>Project URL:</strong>  <a href="http://github.com/cowtowncoder/java-classmate">http://github.com/cowtowncoder/java-classmate</a><br><strong>License names:</strong>   (The Apache Software License, Version 2.0)<br><strong>Source of the notice and license information:</strong> the Maven artifact<br><strong>Notice:</strong> </p>

<pre><code>Java ClassMate library was originally written by Tatu Saloranta (tatu.saloranta@iki.fi) 

Other developers who have contributed code are: 

* Brian Langel 
</code></pre>

<p><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#jackson-annotations"><span class="octicon octicon-link"></span></a>Jackson-annotations</h4>

<p><strong>Maven artifact:</strong>  groupId: com.fasterxml.jackson.core,  artifactId: jackson-annotations,  version: 2.3.0<br><strong>Project URL:</strong>  <a href="http://wiki.fasterxml.com/JacksonHome">http://wiki.fasterxml.com/JacksonHome</a><br><strong>License names:</strong>   (GNU Lesser General Public License, Version 2.1) (<strong>The Apache Software License, Version 2.0</strong>)<br><strong>Source of the notice and license information:</strong> the Maven artifact<br><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#jackson-core"><span class="octicon octicon-link"></span></a>Jackson-core</h4>

<p><strong>Maven artifact:</strong>  groupId: com.fasterxml.jackson.core,  artifactId: jackson-core,  version: 2.3.0<br><strong>Project URL:</strong>  <a href="http://wiki.fasterxml.com/JacksonHome">http://wiki.fasterxml.com/JacksonHome</a><br><strong>License names:</strong>   (GNU Lesser General Public License, Version 2.1) (<strong>The Apache Software License, Version 2.0</strong>)<br><strong>Source of the notice and license information:</strong> the Maven artifact<br><strong>Notice:</strong> </p>

<pre><code># Jackson JSON processor 

Jackson is a high-performance, Free/Open Source JSON processing library. 
It was originally written by Tatu Saloranta (tatu.saloranta@iki.fi), and has 
been in development since 2007. 
It is currently developed by a community of developers, as well as supported 
commercially by FasterXML.com. 

## Licensing 

Jackson core and extension components may licensed under different licenses. 
To find the details that apply to this artifact see the accompanying LICENSE file. 
For more information, including possible other licensing options, contact 
FasterXML.com (http://fasterxml.com). 

## Credits 

A list of contributors may be found from CREDITS file, which is included 
in some artifacts (usually source distributions); but is always available 
from the source code management (SCM) system project uses. 
</code></pre>

<p><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#jackson-databind"><span class="octicon octicon-link"></span></a>jackson-databind</h4>

<p><strong>Maven artifact:</strong>  groupId: com.fasterxml.jackson.core,  artifactId: jackson-databind,  version: 2.3.0<br><strong>Project URL:</strong>  <a href="http://wiki.fasterxml.com/JacksonHome">http://wiki.fasterxml.com/JacksonHome</a><br><strong>License names:</strong>   (GNU Lesser General Public License, Version 2.1) (<strong>The Apache Software License, Version 2.0</strong>)<br><strong>Source of the notice and license information:</strong>  the Maven artifact<br><strong>Notice:</strong> </p>

<pre><code># Jackson JSON processor 

Jackson is a high-performance, Free/Open Source JSON processing library. 
It was originally written by Tatu Saloranta (tatu.saloranta@iki.fi), and has 
been in development since 2007. 
It is currently developed by a community of developers, as well as supported 
commercially by FasterXML.com. 

## Licensing 

Jackson core and extension components may licensed under different licenses. 
To find the details that apply to this artifact see the accompanying LICENSE file. 
For more information, including possible other licensing options, contact 
FasterXML.com (http://fasterxml.com). 

## Credits 

A list of contributors may be found from CREDITS file, which is included 
in some artifacts (usually source distributions); but is always available 
from the source code management (SCM) system project uses. 
</code></pre>

<p><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#glassfish-java-ee-apis-and-their-implementations"><span class="octicon octicon-link"></span></a>GlassFish Java EE APIs and their implementations</h4>

<p><strong>Java Servlet API</strong> (groupId: javax.servlet,  artifactId: javax.servlet-api,  version: 3.0.1) - <a href="http://servlet-spec.java.net">http://servlet-spec.java.net</a><br><strong>JavaServer Pages(TM) API</strong> (groupId: javax.servlet.jsp,  artifactId: javax.servlet.jsp-api,  version: 2.2.1) - <a href="http://jsp.java.net">http://jsp.java.net</a><br><strong>JavaServer Pages(TM) Standard Tag Library API</strong> (groupId: javax.servlet.jsp.jstl,  artifactId: javax.servlet.jsp.jstl-api,  version: 1.2.1) - <a href="http://jcp.org/en/jsr/detail?id=52">http://jcp.org/en/jsr/detail?id=52</a><br><strong>JavaServer Pages (TM) TagLib Implementation</strong> (groupId: org.glassfish.web,  artifactId: javax.servlet.jsp.jstl, version: 1.2.2) - <a href="http://jstl.java.net">http://jstl.java.net</a><br></p>

<p><strong>License names:</strong>   (<strong>Common Development and Distribution License, Version 1.0</strong> + GNU General Public License, Version 2 with classpath exception)<br><strong>Source of the notice and license information:</strong> the Maven artifacts, <a href="https://glassfish.java.net/nonav/public/CDDL+GPL.html">https://glassfish.java.net/nonav/public/CDDL+GPL.html</a><br><strong>License:</strong> </p>

<pre><code>      COMMON DEVELOPMENT AND DISTRIBUTION LICENSE (CDDL) Version 1.0 
      1. Definitions. 
            1.1. "Contributor" means each individual or entity that 
            creates or contributes to the creation of Modifications. 
            1.2. "Contributor Version" means the combination of the 
            Original Software, prior Modifications used by a 
            Contributor (if any), and the Modifications made by that 
            particular Contributor. 
            1.3. "Covered Software" means (a) the Original Software, or 
            (b) Modifications, or (c) the combination of files 
            containing Original Software with files containing 
            Modifications, in each case including portions thereof. 
            1.4. "Executable" means the Covered Software in any form 
            other than Source Code. 
            1.5. "Initial Developer" means the individual or entity 
            that first makes Original Software available under this 
            License. 
            1.6. "Larger Work" means a work which combines Covered 
            Software or portions thereof with code not governed by the 
            terms of this License. 
            1.7. "License" means this document. 
            1.8. "Licensable" means having the right to grant, to the 
            maximum extent possible, whether at the time of the initial 
            grant or subsequently acquired, any and all of the rights 
            conveyed herein. 
            1.9. "Modifications" means the Source Code and Executable 
            form of any of the following: 
                  A. Any file that results from an addition to, 
                  deletion from or modification of the contents of a 
                  file containing Original Software or previous 
                  Modifications; 
                  B. Any new file that contains any part of the 
                  Original Software or previous Modification; or 
                  C. Any new file that is contributed or otherwise made 
                  available under the terms of this License. 
            1.10. "Original Software" means the Source Code and 
            Executable form of computer software code that is 
            originally released under this License. 
            1.11. "Patent Claims" means any patent claim(s), now owned 
            or hereafter acquired, including without limitation, 
            method, process, and apparatus claims, in any patent 
            Licensable by grantor. 
            1.12. "Source Code" means (a) the common form of computer 
            software code in which modifications are made and (b) 
            associated documentation included in or with such code. 
            1.13. "You" (or "Your") means an individual or a legal 
            entity exercising rights under, and complying with all of 
            the terms of, this License. For legal entities, "You" 
            includes any entity which controls, is controlled by, or is 
            under common control with You. For purposes of this 
            definition, "control" means (a) the power, direct or 
            indirect, to cause the direction or management of such 
            entity, whether by contract or otherwise, or (b) ownership 
            of more than fifty percent (50%) of the outstanding shares 
            or beneficial ownership of such entity. 
      2. License Grants. 
            2.1. The Initial Developer Grant. 
            Conditioned upon Your compliance with Section 3.1 below and 
            subject to third party intellectual property claims, the 
            Initial Developer hereby grants You a world-wide, 
            royalty-free, non-exclusive license: 
                  (a) under intellectual property rights (other than 
                  patent or trademark) Licensable by Initial Developer, 
                  to use, reproduce, modify, display, perform, 
                  sublicense and distribute the Original Software (or 
                  portions thereof), with or without Modifications, 
                  and/or as part of a Larger Work; and 
                  (b) under Patent Claims infringed by the making, 
                  using or selling of Original Software, to make, have 
                  made, use, practice, sell, and offer for sale, and/or 
                  otherwise dispose of the Original Software (or 
                  portions thereof). 
                  (c) The licenses granted in Sections 2.1(a) and (b) 
                  are effective on the date Initial Developer first 
                  distributes or otherwise makes the Original Software 
                  available to a third party under the terms of this 
                  License. 
                  (d) Notwithstanding Section 2.1(b) above, no patent 
                  license is granted: (1) for code that You delete from 
                  the Original Software, or (2) for infringements 
                  caused by: (i) the modification of the Original 
                  Software, or (ii) the combination of the Original 
                  Software with other software or devices. 
            2.2. Contributor Grant. 
            Conditioned upon Your compliance with Section 3.1 below and 
            subject to third party intellectual property claims, each 
            Contributor hereby grants You a world-wide, royalty-free, 
            non-exclusive license: 
                  (a) under intellectual property rights (other than 
                  patent or trademark) Licensable by Contributor to 
                  use, reproduce, modify, display, perform, sublicense 
                  and distribute the Modifications created by such 
                  Contributor (or portions thereof), either on an 
                  unmodified basis, with other Modifications, as 
                  Covered Software and/or as part of a Larger Work; and 
                  (b) under Patent Claims infringed by the making, 
                  using, or selling of Modifications made by that 
                  Contributor either alone and/or in combination with 
                  its Contributor Version (or portions of such 
                  combination), to make, use, sell, offer for sale, 
                  have made, and/or otherwise dispose of: (1) 
                  Modifications made by that Contributor (or portions 
                  thereof); and (2) the combination of Modifications 
                  made by that Contributor with its Contributor Version 
                  (or portions of such combination). 
                  (c) The licenses granted in Sections 2.2(a) and 
                  2.2(b) are effective on the date Contributor first 
                  distributes or otherwise makes the Modifications 
                  available to a third party. 
                  (d) Notwithstanding Section 2.2(b) above, no patent 
                  license is granted: (1) for any code that Contributor 
                  has deleted from the Contributor Version; (2) for 
                  infringements caused by: (i) third party 
                  modifications of Contributor Version, or (ii) the 
                  combination of Modifications made by that Contributor 
                  with other software (except as part of the 
                  Contributor Version) or other devices; or (3) under 
                  Patent Claims infringed by Covered Software in the 
                  absence of Modifications made by that Contributor. 
      3. Distribution Obligations. 
            3.1. Availability of Source Code. 
            Any Covered Software that You distribute or otherwise make 
            available in Executable form must also be made available in 
            Source Code form and that Source Code form must be 
            distributed only under the terms of this License. You must 
            include a copy of this License with every copy of the 
            Source Code form of the Covered Software You distribute or 
            otherwise make available. You must inform recipients of any 
            such Covered Software in Executable form as to how they can 
            obtain such Covered Software in Source Code form in a 
            reasonable manner on or through a medium customarily used 
            for software exchange. 
            3.2. Modifications. 
            The Modifications that You create or to which You 
            contribute are governed by the terms of this License. You 
            represent that You believe Your Modifications are Your 
            original creation(s) and/or You have sufficient rights to 
            grant the rights conveyed by this License. 
            3.3. Required Notices. 
            You must include a notice in each of Your Modifications 
            that identifies You as the Contributor of the Modification. 
            You may not remove or alter any copyright, patent or 
            trademark notices contained within the Covered Software, or 
            any notices of licensing or any descriptive text giving 
            attribution to any Contributor or the Initial Developer. 
            3.4. Application of Additional Terms. 
            You may not offer or impose any terms on any Covered 
            Software in Source Code form that alters or restricts the 
            applicable version of this License or the recipients' 
            rights hereunder. You may choose to offer, and to charge a 
            fee for, warranty, support, indemnity or liability 
            obligations to one or more recipients of Covered Software. 
            However, you may do so only on Your own behalf, and not on 
            behalf of the Initial Developer or any Contributor. You 
            must make it absolutely clear that any such warranty, 
            support, indemnity or liability obligation is offered by 
            You alone, and You hereby agree to indemnify the Initial 
            Developer and every Contributor for any liability incurred 
            by the Initial Developer or such Contributor as a result of 
            warranty, support, indemnity or liability terms You offer. 
            3.5. Distribution of Executable Versions. 
            You may distribute the Executable form of the Covered 
            Software under the terms of this License or under the terms 
            of a license of Your choice, which may contain terms 
            different from this License, provided that You are in 
            compliance with the terms of this License and that the 
            license for the Executable form does not attempt to limit 
            or alter the recipient's rights in the Source Code form 
            from the rights set forth in this License. If You 
            distribute the Covered Software in Executable form under a 
            different license, You must make it absolutely clear that 
            any terms which differ from this License are offered by You 
            alone, not by the Initial Developer or Contributor. You 
            hereby agree to indemnify the Initial Developer and every 
            Contributor for any liability incurred by the Initial 
            Developer or such Contributor as a result of any such terms 
            You offer. 
            3.6. Larger Works. 
            You may create a Larger Work by combining Covered Software 
            with other code not governed by the terms of this License 
            and distribute the Larger Work as a single product. In such 
            a case, You must make sure the requirements of this License 
            are fulfilled for the Covered Software. 
      4. Versions of the License. 
            4.1. New Versions. 
            Sun Microsystems, Inc. is the initial license steward and 
            may publish revised and/or new versions of this License 
            from time to time. Each version will be given a 
            distinguishing version number. Except as provided in 
            Section 4.3, no one other than the license steward has the 
            right to modify this License. 
            4.2. Effect of New Versions. 
            You may always continue to use, distribute or otherwise 
            make the Covered Software available under the terms of the 
            version of the License under which You originally received 
            the Covered Software. If the Initial Developer includes a 
            notice in the Original Software prohibiting it from being 
            distributed or otherwise made available under any 
            subsequent version of the License, You must distribute and 
            make the Covered Software available under the terms of the 
            version of the License under which You originally received 
            the Covered Software. Otherwise, You may also choose to 
            use, distribute or otherwise make the Covered Software 
            available under the terms of any subsequent version of the 
            License published by the license steward. 
            4.3. Modified Versions. 
            When You are an Initial Developer and You want to create a 
            new license for Your Original Software, You may create and 
            use a modified version of this License if You: (a) rename 
            the license and remove any references to the name of the 
            license steward (except to note that the license differs 
            from this License); and (b) otherwise make it clear that 
            the license contains terms which differ from this License. 
      5. DISCLAIMER OF WARRANTY. 
      COVERED SOFTWARE IS PROVIDED UNDER THIS LICENSE ON AN "AS IS" 
      BASIS, WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR IMPLIED, 
      INCLUDING, WITHOUT LIMITATION, WARRANTIES THAT THE COVERED 
      SOFTWARE IS FREE OF DEFECTS, MERCHANTABLE, FIT FOR A PARTICULAR 
      PURPOSE OR NON-INFRINGING. THE ENTIRE RISK AS TO THE QUALITY AND 
      PERFORMANCE OF THE COVERED SOFTWARE IS WITH YOU. SHOULD ANY 
      COVERED SOFTWARE PROVE DEFECTIVE IN ANY RESPECT, YOU (NOT THE 
      INITIAL DEVELOPER OR ANY OTHER CONTRIBUTOR) ASSUME THE COST OF 
      ANY NECESSARY SERVICING, REPAIR OR CORRECTION. THIS DISCLAIMER OF 
      WARRANTY CONSTITUTES AN ESSENTIAL PART OF THIS LICENSE. NO USE OF 
      ANY COVERED SOFTWARE IS AUTHORIZED HEREUNDER EXCEPT UNDER THIS 
      DISCLAIMER. 
      6. TERMINATION. 
            6.1. This License and the rights granted hereunder will 
            terminate automatically if You fail to comply with terms 
            herein and fail to cure such breach within 30 days of 
            becoming aware of the breach. Provisions which, by their 
            nature, must remain in effect beyond the termination of 
            this License shall survive. 
            6.2. If You assert a patent infringement claim (excluding 
            declaratory judgment actions) against Initial Developer or 
            a Contributor (the Initial Developer or Contributor against 
            whom You assert such claim is referred to as "Participant") 
            alleging that the Participant Software (meaning the 
            Contributor Version where the Participant is a Contributor 
            or the Original Software where the Participant is the 
            Initial Developer) directly or indirectly infringes any 
            patent, then any and all rights granted directly or 
            indirectly to You by such Participant, the Initial 
            Developer (if the Initial Developer is not the Participant) 
            and all Contributors under Sections 2.1 and/or 2.2 of this 
            License shall, upon 60 days notice from Participant 
            terminate prospectively and automatically at the expiration 
            of such 60 day notice period, unless if within such 60 day 
            period You withdraw Your claim with respect to the 
            Participant Software against such Participant either 
            unilaterally or pursuant to a written agreement with 
            Participant. 
            6.3. In the event of termination under Sections 6.1 or 6.2 
            above, all end user licenses that have been validly granted 
            by You or any distributor hereunder prior to termination 
            (excluding licenses granted to You by any distributor) 
            shall survive termination. 
      7. LIMITATION OF LIABILITY. 
      UNDER NO CIRCUMSTANCES AND UNDER NO LEGAL THEORY, WHETHER TORT 
      (INCLUDING NEGLIGENCE), CONTRACT, OR OTHERWISE, SHALL YOU, THE 
      INITIAL DEVELOPER, ANY OTHER CONTRIBUTOR, OR ANY DISTRIBUTOR OF 
      COVERED SOFTWARE, OR ANY SUPPLIER OF ANY OF SUCH PARTIES, BE 
      LIABLE TO ANY PERSON FOR ANY INDIRECT, SPECIAL, INCIDENTAL, OR 
      CONSEQUENTIAL DAMAGES OF ANY CHARACTER INCLUDING, WITHOUT 
      LIMITATION, DAMAGES FOR LOST PROFITS, LOSS OF GOODWILL, WORK 
      STOPPAGE, COMPUTER FAILURE OR MALFUNCTION, OR ANY AND ALL OTHER 
      COMMERCIAL DAMAGES OR LOSSES, EVEN IF SUCH PARTY SHALL HAVE BEEN 
      INFORMED OF THE POSSIBILITY OF SUCH DAMAGES. THIS LIMITATION OF 
      LIABILITY SHALL NOT APPLY TO LIABILITY FOR DEATH OR PERSONAL 
      INJURY RESULTING FROM SUCH PARTY'S NEGLIGENCE TO THE EXTENT 
      APPLICABLE LAW PROHIBITS SUCH LIMITATION. SOME JURISDICTIONS DO 
      NOT ALLOW THE EXCLUSION OR LIMITATION OF INCIDENTAL OR 
      CONSEQUENTIAL DAMAGES, SO THIS EXCLUSION AND LIMITATION MAY NOT 
      APPLY TO YOU. 
      8. U.S. GOVERNMENT END USERS. 
      The Covered Software is a "commercial item," as that term is 
      defined in 48 C.F.R. 2.101 (Oct. 1995), consisting of "commercial 
      computer software" (as that term is defined at 48 C.F.R. ¤ 
      252.227-7014(a)(1)) and "commercial computer software 
      documentation" as such terms are used in 48 C.F.R. 12.212 (Sept. 
      1995). Consistent with 48 C.F.R. 12.212 and 48 C.F.R. 227.7202-1 
      through 227.7202-4 (June 1995), all U.S. Government End Users 
      acquire Covered Software with only those rights set forth herein. 
      This U.S. Government Rights clause is in lieu of, and supersedes, 
      any other FAR, DFAR, or other clause or provision that addresses 
      Government rights in computer software under this License. 
      9. MISCELLANEOUS. 
      This License represents the complete agreement concerning subject 
      matter hereof. If any provision of this License is held to be 
      unenforceable, such provision shall be reformed only to the 
      extent necessary to make it enforceable. This License shall be 
      governed by the law of the jurisdiction specified in a notice 
      contained within the Original Software (except to the extent 
      applicable law, if any, provides otherwise), excluding such 
      jurisdiction's conflict-of-law provisions. Any litigation 
      relating to this License shall be subject to the jurisdiction of 
      the courts located in the jurisdiction and venue specified in a 
      notice contained within the Original Software, with the losing 
      party responsible for costs, including, without limitation, court 
      costs and reasonable attorneys' fees and expenses. The 
      application of the United Nations Convention on Contracts for the 
      International Sale of Goods is expressly excluded. Any law or 
      regulation which provides that the language of a contract shall 
      be construed against the drafter shall not apply to this License. 
      You agree that You alone are responsible for compliance with the 
      United States export administration regulations (and the export 
      control laws and regulation of any other countries) when You use, 
      distribute or otherwise make available any Covered Software. 
      10. RESPONSIBILITY FOR CLAIMS. 
      As between Initial Developer and the Contributors, each party is 
      responsible for claims and damages arising, directly or 
      indirectly, out of its utilization of rights under this License 
      and You agree to work with Initial Developer and Contributors to 
      distribute such responsibility on an equitable basis. Nothing 
      herein is intended or shall be deemed to constitute any admission 
      of liability. 



NOTICE PURSUANT TO SECTION 9 OF THE COMMON DEVELOPMENT AND 
DISTRIBUTION LICENSE (CDDL) 

The code released under the CDDL shall be governed by the laws of the 
State of California (excluding conflict-of-law provisions). Any 
litigation relating to this License shall be subject to the 
jurisdiction of the Federal Courts of the Northern District of 
California and the state courts of the State of California, 
with venue lying in Santa Clara County, California. 

</code></pre>

<h4>
<a class="anchor" href="#bean-validation-api"><span class="octicon octicon-link"></span></a>Bean Validation API</h4>

<p><strong>Maven artifact:</strong>  groupId: javax.validation,  artifactId: validation-api,  version: 1.1.0.Final<br><strong>Project URL:</strong>  <a href="http://beanvalidation.org">http://beanvalidation.org</a><br><strong>License names:</strong>   (The Apache Software License, Version 2.0)<br><strong>Source of the notice and license information:</strong> <a href="https://github.com/beanvalidation/beanvalidation-api">https://github.com/beanvalidation/beanvalidation-api</a>, <a href="http://beanvalidation.org/">http://beanvalidation.org/</a><br><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#junit"><span class="octicon octicon-link"></span></a>JUnit</h4>

<p><strong>Maven artifact:</strong>  groupId: junit,  artifactId: junit,  version: 4.11<br><strong>Project URL:</strong>  <a href="http://junit.org">http://junit.org</a><br><strong>License names:</strong>   (Eclipse Public License, Version 1.0)<br><strong>Source of the notice and license information:</strong> <a href="https://github.com/junit-team/junit">https://github.com/junit-team/junit</a> (The License Maven Plugin extracts the CPL license. The license was corrected manually.)<br><strong>Comments:</strong> This Maven artifact is not distributed with the project; it is downloaded automatically by Maven at build time and is used at build time only (for unit testing).<br><strong>License:</strong> </p>

<pre><code>See the Eclipse Public License, Version 1.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#apache-log4j"><span class="octicon octicon-link"></span></a>Apache Log4j</h4>

<p><strong>Maven artifact:</strong>  groupId: log4j,  artifactId: log4j,  version: 1.2.17<br><strong>Project URL:</strong>  <a href="http://logging.apache.org/log4j/1.2/">http://logging.apache.org/log4j/1.2/</a><br><strong>License names:</strong>   (The Apache Software License, Version 2.0)<br><strong>Source of the notice and license information:</strong> the Maven artifact<br><strong>Notice:</strong> </p>

<pre><code>Apache log4j 
Copyright 2007 The Apache Software Foundation 

This product includes software developed at 
The Apache Software Foundation (http://www.apache.org/). 
</code></pre>

<p><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#hamcrest"><span class="octicon octicon-link"></span></a>Hamcrest</h4>

<p><strong>Hamcrest All</strong> (groupId: org.hamcrest,  artifactId: hamcrest-all,  version: 1.3) - <a href="https://github.com/hamcrest/JavaHamcrest/hamcrest-all">https://github.com/hamcrest/JavaHamcrest/hamcrest-all</a><br><strong>Hamcrest Core</strong> (groupId: org.hamcrest,  artifactId: hamcrest-core,  version: 1.3) - <a href="https://github.com/hamcrest/JavaHamcrest/hamcrest-core">https://github.com/hamcrest/JavaHamcrest/hamcrest-core</a><br></p>

<p><strong>License names:</strong>   (New BSD License)<br><strong>Source of the notice and license information:</strong> the Maven artifacts<br><strong>Comments:</strong> These Maven artifacts are not distributed with the project; they are downloaded automatically by Maven at build time and are used at build time only (for unit testing).<br><strong>License:</strong> </p>

<pre><code>BSD License 

Copyright (c) 2000-2006, www.hamcrest.org 
All rights reserved. 

Redistribution and use in source and binary forms, with or without 
modification, are permitted provided that the following conditions are met: 

Redistributions of source code must retain the above copyright notice, this list of 
conditions and the following disclaimer. Redistributions in binary form must reproduce 
the above copyright notice, this list of conditions and the following disclaimer in 
the documentation and/or other materials provided with the distribution. 

Neither the name of Hamcrest nor the names of its contributors may be used to endorse 
or promote products derived from this software without specific prior written 
permission. 

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY 
EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES 
OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT 
SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED 
TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR 
BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY 
WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH 
DAMAGE. 
</code></pre>

<h4>
<a class="anchor" href="#hibernate-validator-engine"><span class="octicon octicon-link"></span></a>Hibernate Validator Engine</h4>

<p><strong>Maven artifact:</strong>  groupId: org.hibernate,  artifactId: hibernate-validator,  version: 5.0.2.Final<br><strong>Project URL:</strong>  <a href="http://validator.hibernate.org/hibernate-validator">http://validator.hibernate.org/hibernate-validator</a><br><strong>License names:</strong>  (The Apache Software License, Version 2.0)<br><strong>Source of the notice and license information:</strong>  <a href="https://github.com/hibernate/hibernate-validator">https://github.com/hibernate/hibernate-validator</a><br><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#jboss-logging-3"><span class="octicon octicon-link"></span></a>JBoss Logging 3</h4>

<p><strong>Maven artifact:</strong>  groupId: org.jboss.logging,  artifactId: jboss-logging,  version: 3.1.1.GA<br><strong>Project URL:</strong>  <a href="http://www.jboss.org">http://www.jboss.org</a><br><strong>License names:</strong>   (GNU Lesser General Public License, Version 2.1 or any later version); this project has chosen <strong>Version 3.0 of the license</strong> <br><strong>Source of the notice and license information:</strong> the pom.xml file at <a href="https://github.com/jboss-logging/jboss-logging">https://github.com/jboss-logging/jboss-logging</a><br><strong>Comments:</strong> Version 3.2.0.Beta2 of the library switched to the Apache license (see the pom.xml history on GitHub). <br><strong>License:</strong> </p>

<pre><code>See: 

GNU Lesser General Public license, Version 3 and 
GNU General Public License, Version 3 

in separate sections of this document (LGPL v.3 is designed as an exception to GPL v.3). 
</code></pre>

<h4>
<a class="anchor" href="#slf4j"><span class="octicon octicon-link"></span></a>SLF4J</h4>

<p><strong>SLF4J API Module</strong> (groupId: org.slf4j,  artifactId: slf4j-api,  version: 1.7.5)<br><strong>SLF4J LOG4J-12 Binding</strong> (groupId: org.slf4j,  artifactId: slf4j-log4j12,  version: 1.7.5) </p>

<p><strong>Project URL:</strong>  <a href="http://www.slf4j.org">http://www.slf4j.org</a><br><strong>License names:</strong>  (MIT License)<br><strong>Source of the notice and license information:</strong> <a href="https://github.com/qos-ch/slf4j">https://github.com/qos-ch/slf4j</a>, <a href="http://www.slf4j.org">http://www.slf4j.org</a><br><strong>Comments:</strong> The jcl-over-slf4j artifact is described separately.<br><strong>License:</strong> </p>

<pre><code>Copyright (c) 2004-2013 QOS.ch 
All rights reserved. 

Permission is hereby granted, free  of charge, to any person obtaining 
a  copy  of this  software  and  associated  documentation files  (the 
"Software"), to  deal in  the Software without  restriction, including 
without limitation  the rights to  use, copy, modify,  merge, publish, 
distribute,  sublicense, and/or sell  copies of  the Software,  and to 
permit persons to whom the Software  is furnished to do so, subject to 
the following conditions: 

The  above  copyright  notice  and  this permission  notice  shall  be 
included in all copies or substantial portions of the Software. 

THE  SOFTWARE IS  PROVIDED  "AS  IS", WITHOUT  WARRANTY  OF ANY  KIND, 
EXPRESS OR  IMPLIED, INCLUDING  BUT NOT LIMITED  TO THE  WARRANTIES OF 
MERCHANTABILITY,    FITNESS    FOR    A   PARTICULAR    PURPOSE    AND 
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
OF CONTRACT, TORT OR OTHERWISE,  ARISING FROM, OUT OF OR IN CONNECTION 
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
</code></pre>

<h4>
<a class="anchor" href="#jcl-111-implemented-over-slf4j"><span class="octicon octicon-link"></span></a>JCL 1.1.1 implemented over SLF4J</h4>

<p><strong>Maven artifact:</strong>  groupId: org.slf4j,  artifactId: jcl-over-slf4j,  version: 1.7.5<br><strong>Project URL:</strong>  <a href="http://www.slf4j.org">http://www.slf4j.org</a><br><strong>License names:</strong>  (The Apache Software License, Version 2.0)<br><strong>Source of the notice and license information:</strong> <a href="http://www.slf4j.org">http://www.slf4j.org</a> web site says SLF4J uses MIT licens. <a href="https://github.com/qos-ch/slf4j">https://github.com/qos-ch/slf4j</a> contains the same (MIT) license. However, jcl-over-slf4j subdirectory in the GitHub repository contains the Apache license. Probably, this component uses the Apache license.<br><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<h4>
<a class="anchor" href="#spring"><span class="octicon octicon-link"></span></a>Spring</h4>

<p><strong>Spring AOP</strong> (groupId: org.springframework,  artifactId: spring-aop,  version: 4.0.2.RELEASE),<br><strong>Spring Beans</strong> (groupId: org.springframework,  artifactId: spring-beans,  version: 4.0.2.RELEASE),<br><strong>Spring Context</strong> (groupId: org.springframework,  artifactId: spring-context,  version: 4.0.2.RELEASE),<br><strong>Spring Core</strong> (groupId: org.springframework,  artifactId: spring-core,  version: 4.0.2.RELEASE),<br><strong>Spring Expression Language (SpEL)</strong> (groupId: org.springframework,  artifactId: spring-expression,  version: 4.0.2.RELEASE),<br><strong>Spring JDBC</strong> (groupId: org.springframework,  artifactId: spring-jdbc,  version: 3.2.8.RELEASE),<br><strong>Spring TestContext Framework</strong> (groupId: org.springframework,  artifactId: spring-test,  version: 4.0.2.RELEASE),<br><strong>Spring Transaction</strong> (groupId: org.springframework,  artifactId: spring-tx,  version: 3.2.8.RELEASE),<br><strong>Spring Web</strong> (groupId: org.springframework,  artifactId: spring-web,  version: 4.0.2.RELEASE)<br><strong>Project URL:</strong>  <a href="https://github.com/spring-projects/spring-framework">https://github.com/spring-projects/spring-framework</a><br><strong>Spring Web MVC</strong> (groupId: org.springframework,  artifactId: spring-webmvc,  version: 4.0.2.RELEASE)<br></p>

<p><strong>Project URL:</strong>  <a href="https://github.com/spring-projects/spring-framework">https://github.com/spring-projects/spring-framework</a><br><strong>License names:</strong>   (The Apache Software License, Version 2.0)<br><strong>Source of the notice and license information:</strong> the Maven artifacts (all these artifacts contain identical license.txt and notice.txt files)<br><strong>Notice:</strong> </p>

<pre><code>Spring Framework 4.0.2.RELEASE 
Copyright (c) 2002-2014 Pivotal, Inc. 

This product is licensed to you under the Apache License, Version 2.0 
(the "License"). You may not use this product except in compliance with 
the License. 

This product may include a number of subcomponents with separate 
copyright notices and license terms. Your use of the source code for 
these subcomponents is subject to the terms and conditions of the 
subcomponent's license, as noted in the license.txt file. 
</code></pre>

<p><strong>License:</strong> </p>

<pre><code>                                 Apache License 
                           Version 2.0, January 2004 
                        http://www.apache.org/licenses/ 

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION 

   1. Definitions. 

      "License" shall mean the terms and conditions for use, reproduction, 
      and distribution as defined by Sections 1 through 9 of this document. 

      "Licensor" shall mean the copyright owner or entity authorized by 
      the copyright owner that is granting the License. 

      "Legal Entity" shall mean the union of the acting entity and all 
      other entities that control, are controlled by, or are under common 
      control with that entity. For the purposes of this definition, 
      "control" means (i) the power, direct or indirect, to cause the 
      direction or management of such entity, whether by contract or 
      otherwise, or (ii) ownership of fifty percent (50%) or more of the 
      outstanding shares, or (iii) beneficial ownership of such entity. 

      "You" (or "Your") shall mean an individual or Legal Entity 
      exercising permissions granted by this License. 

      "Source" form shall mean the preferred form for making modifications, 
      including but not limited to software source code, documentation 
      source, and configuration files. 

      "Object" form shall mean any form resulting from mechanical 
      transformation or translation of a Source form, including but 
      not limited to compiled object code, generated documentation, 
      and conversions to other media types. 

      "Work" shall mean the work of authorship, whether in Source or 
      Object form, made available under the License, as indicated by a 
      copyright notice that is included in or attached to the work 
      (an example is provided in the Appendix below). 

      "Derivative Works" shall mean any work, whether in Source or Object 
      form, that is based on (or derived from) the Work and for which the 
      editorial revisions, annotations, elaborations, or other modifications 
      represent, as a whole, an original work of authorship. For the purposes 
      of this License, Derivative Works shall not include works that remain 
      separable from, or merely link (or bind by name) to the interfaces of, 
      the Work and Derivative Works thereof. 

      "Contribution" shall mean any work of authorship, including 
      the original version of the Work and any modifications or additions 
      to that Work or Derivative Works thereof, that is intentionally 
      submitted to Licensor for inclusion in the Work by the copyright owner 
      or by an individual or Legal Entity authorized to submit on behalf of 
      the copyright owner. For the purposes of this definition, "submitted" 
      means any form of electronic, verbal, or written communication sent 
      to the Licensor or its representatives, including but not limited to 
      communication on electronic mailing lists, source code control systems, 
      and issue tracking systems that are managed by, or on behalf of, the 
      Licensor for the purpose of discussing and improving the Work, but 
      excluding communication that is conspicuously marked or otherwise 
      designated in writing by the copyright owner as "Not a Contribution." 

      "Contributor" shall mean Licensor and any individual or Legal Entity 
      on behalf of whom a Contribution has been received by Licensor and 
      subsequently incorporated within the Work. 

   2. Grant of Copyright License. Subject to the terms and conditions of 
      this License, each Contributor hereby grants to You a perpetual, 
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable 
      copyright license to reproduce, prepare Derivative Works of, 
      publicly display, publicly perform, sublicense, and distribute the 
      Work and such Derivative Works in Source or Object form. 

   3. Grant of Patent License. Subject to the terms and conditions of 
      this License, each Contributor hereby grants to You a perpetual, 
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable 
      (except as stated in this section) patent license to make, have made, 
      use, offer to sell, sell, import, and otherwise transfer the Work, 
      where such license applies only to those patent claims licensable 
      by such Contributor that are necessarily infringed by their 
      Contribution(s) alone or by combination of their Contribution(s) 
      with the Work to which such Contribution(s) was submitted. If You 
      institute patent litigation against any entity (including a 
      cross-claim or counterclaim in a lawsuit) alleging that the Work 
      or a Contribution incorporated within the Work constitutes direct 
      or contributory patent infringement, then any patent licenses 
      granted to You under this License for that Work shall terminate 
      as of the date such litigation is filed. 

   4. Redistribution. You may reproduce and distribute copies of the 
      Work or Derivative Works thereof in any medium, with or without 
      modifications, and in Source or Object form, provided that You 
      meet the following conditions: 

      (a) You must give any other recipients of the Work or 
          Derivative Works a copy of this License; and 

      (b) You must cause any modified files to carry prominent notices 
          stating that You changed the files; and 

      (c) You must retain, in the Source form of any Derivative Works 
          that You distribute, all copyright, patent, trademark, and 
          attribution notices from the Source form of the Work, 
          excluding those notices that do not pertain to any part of 
          the Derivative Works; and 

      (d) If the Work includes a "NOTICE" text file as part of its 
          distribution, then any Derivative Works that You distribute must 
          include a readable copy of the attribution notices contained 
          within such NOTICE file, excluding those notices that do not 
          pertain to any part of the Derivative Works, in at least one 
          of the following places: within a NOTICE text file distributed 
          as part of the Derivative Works; within the Source form or 
          documentation, if provided along with the Derivative Works; or, 
          within a display generated by the Derivative Works, if and 
          wherever such third-party notices normally appear. The contents 
          of the NOTICE file are for informational purposes only and 
          do not modify the License. You may add Your own attribution 
          notices within Derivative Works that You distribute, alongside 
          or as an addendum to the NOTICE text from the Work, provided 
          that such additional attribution notices cannot be construed 
          as modifying the License. 

      You may add Your own copyright statement to Your modifications and 
      may provide additional or different license terms and conditions 
      for use, reproduction, or distribution of Your modifications, or 
      for any such Derivative Works as a whole, provided Your use, 
      reproduction, and distribution of the Work otherwise complies with 
      the conditions stated in this License. 

   5. Submission of Contributions. Unless You explicitly state otherwise, 
      any Contribution intentionally submitted for inclusion in the Work 
      by You to the Licensor shall be under the terms and conditions of 
      this License, without any additional terms or conditions. 
      Notwithstanding the above, nothing herein shall supersede or modify 
      the terms of any separate license agreement you may have executed 
      with Licensor regarding such Contributions. 

   6. Trademarks. This License does not grant permission to use the trade 
      names, trademarks, service marks, or product names of the Licensor, 
      except as required for reasonable and customary use in describing the 
      origin of the Work and reproducing the content of the NOTICE file. 

   7. Disclaimer of Warranty. Unless required by applicable law or 
      agreed to in writing, Licensor provides the Work (and each 
      Contributor provides its Contributions) on an "AS IS" BASIS, 
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or 
      implied, including, without limitation, any warranties or conditions 
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A 
      PARTICULAR PURPOSE. You are solely responsible for determining the 
      appropriateness of using or redistributing the Work and assume any 
      risks associated with Your exercise of permissions under this License. 

   8. Limitation of Liability. In no event and under no legal theory, 
      whether in tort (including negligence), contract, or otherwise, 
      unless required by applicable law (such as deliberate and grossly 
      negligent acts) or agreed to in writing, shall any Contributor be 
      liable to You for damages, including any direct, indirect, special, 
      incidental, or consequential damages of any character arising as a 
      result of this License or out of the use or inability to use the 
      Work (including but not limited to damages for loss of goodwill, 
      work stoppage, computer failure or malfunction, or any and all 
      other commercial damages or losses), even if such Contributor 
      has been advised of the possibility of such damages. 

   9. Accepting Warranty or Additional Liability. While redistributing 
      the Work or Derivative Works thereof, You may choose to offer, 
      and charge a fee for, acceptance of support, warranty, indemnity, 
      or other liability obligations and/or rights consistent with this 
      License. However, in accepting such obligations, You may act only 
      on Your own behalf and on Your sole responsibility, not on behalf 
      of any other Contributor, and only if You agree to indemnify, 
      defend, and hold each Contributor harmless for any liability 
      incurred by, or claims asserted against, such Contributor by reason 
      of your accepting any such warranty or additional liability. 

   END OF TERMS AND CONDITIONS 

   APPENDIX: How to apply the Apache License to your work. 

      To apply the Apache License to your work, attach the following 
      boilerplate notice, with the fields enclosed by brackets "[]" 
      replaced with your own identifying information. (Don't include 
      the brackets!)  The text should be enclosed in the appropriate 
      comment syntax for the file format. We also recommend that a 
      file or class name and description of purpose be included on the 
      same "printed page" as the copyright notice for easier 
      identification within third-party archives. 

   Copyright [yyyy] [name of copyright owner] 

   Licensed under the Apache License, Version 2.0 (the "License"); 
   you may not use this file except in compliance with the License. 
   You may obtain a copy of the License at 

       http://www.apache.org/licenses/LICENSE-2.0 

   Unless required by applicable law or agreed to in writing, software 
   distributed under the License is distributed on an "AS IS" BASIS, 
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
   See the License for the specific language governing permissions and 
   limitations under the License. 

======================================================================= 

SPRING FRAMEWORK 4.0.2.RELEASE SUBCOMPONENTS: 

Spring Framework 4.0.2.RELEASE includes a number of subcomponents 
with separate copyright notices and license terms. The product that 
includes this file does not necessarily use all the open source 
subcomponents referred to below. Your use of the source 
code for these subcomponents is subject to the terms and 
conditions of the following licenses. 


&gt;&gt;&gt; ASM 4.0 (org.ow2.asm:asm:4.0, org.ow2.asm:asm-commons:4.0): 

Copyright (c) 2000-2011 INRIA, France Telecom 
All rights reserved. 

Redistribution and use in source and binary forms, with or without 
modification, are permitted provided that the following conditions 
are met: 

1. Redistributions of source code must retain the above copyright 
   notice, this list of conditions and the following disclaimer. 

2. Redistributions in binary form must reproduce the above copyright 
   notice, this list of conditions and the following disclaimer in the 
   documentation and/or other materials provided with the distribution. 

3. Neither the name of the copyright holders nor the names of its 
   contributors may be used to endorse or promote products derived from 
   this software without specific prior written permission. 

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE 
ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE 
LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR 
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS 
INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF 
THE POSSIBILITY OF SUCH DAMAGE. 

Copyright (c) 1999-2009, OW2 Consortium &lt;http://www.ow2.org/&gt; 


&gt;&gt;&gt; CGLIB 3.0 (cglib:cglib:3.0): 

Per the LICENSE file in the CGLIB JAR distribution downloaded from 
http://sourceforge.net/projects/cglib/files/cglib3/3.0/cglib-3.0.jar/download, 
CGLIB 3.0 is licensed under the Apache License, version 2.0, the text of which 
is included above. 


======================================================================= 

To the extent any open source subcomponents are licensed under the EPL and/or 
other similar licenses that require the source code and/or modifications to 
source code to be made available (as would be noted above), you may obtain a 
copy of the source code corresponding to the binaries for such open source 
components and modifications thereto, if any, (the "Source Files"), by 
downloading the Source Files from http://www.springsource.org/download, or by 
sending a request, with your name and address to: 

    Pivotal, Inc., 875 Howard St, 
    San Francisco, CA 94103 
    United States of America 

or email info@gopivotal.com.  All such requests should clearly specify: 

    OPEN SOURCE FILES REQUEST 
    Attention General Counsel 

Pivotal shall mail a copy of the Source Files to you on a CD or equivalent 
physical medium. This offer to obtain a copy of the Source Files is valid for 
three years from the date you acquired this Software product. 
</code></pre>

<h4>
<a class="anchor" href="#spring-security"><span class="octicon octicon-link"></span></a>Spring Security</h4>

<p><strong>spring-security-acl</strong> (groupId: org.springframework.security,  artifactId: spring-security-acl,  version: 3.2.1.RELEASE),<br><strong>spring-security-config</strong> (groupId: org.springframework.security,  artifactId: spring-security-config,  version: 3.2.1.RELEASE),<br><strong>spring-security-core</strong> (groupId: org.springframework.security,  artifactId: spring-security-core,  version: 3.2.1.RELEASE),<br><strong>spring-security-taglibs</strong> (groupId: org.springframework.security,  artifactId: spring-security-taglibs,  version: 3.2.1.RELEASE),<br><strong>spring-security-web</strong> (groupId: org.springframework.security,  artifactId: spring-security-web,  version: 3.2.1.RELEASE)<br></p>

<p><strong>Project URL:</strong>  <a href="http://spring.io/spring-security">http://spring.io/spring-security</a><br><strong>License names:</strong>   (The Apache Software License, Version 2.0)<br><strong>Source of the notice and license information:</strong> <a href="https://github.com/spring-projects/spring-security">https://github.com/spring-projects/spring-security</a><br><strong>Notice:</strong> </p>

<pre><code>   ====================================================================== 
   == NOTICE file corresponding to section 4(d) of the Apache License, == 
   == Version 2.0, in this case for the Spring Security distribution. == 
   ====================================================================== 

   The end-user documentation included with a redistribution, if any, 
   must include the following acknowledgement: 

     "This product includes software developed by Spring Security 
      Project (http://www.springframework.org/security)." 

   Alternately, this acknowledgement may appear in the software itself, 
   if and wherever such third-party acknowledgements normally appear. 

   The names "Spring", "Spring Security", "Spring Security System", 
   "SpringSource", "Acegi", "Acegi Security", "Acegi Security System", 
   "Acegi" or any derivatives thereof may not be used to endorse or 
   promote products derived from this software without prior written 
   permission. For written permission, please contact 
   ben.alex@springsource.com. 
</code></pre>

<p><strong>License:</strong> </p>

<pre><code>See the Apache Software License, Version 2.0 in a separate section of 
this document. 
</code></pre>

<p><br></p>

<h3>
<a class="anchor" href="#licenses"><span class="octicon octicon-link"></span></a>Licenses</h3>

<h4>
<a class="anchor" href="#apache-license--apache-software-license-version-20"><span class="octicon octicon-link"></span></a>Apache License / Apache Software License, Version 2.0</h4>

<pre><code>                                 Apache License 
                           Version 2.0, January 2004 
                        http://www.apache.org/licenses/ 

   TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION 

   1. Definitions. 

      "License" shall mean the terms and conditions for use, reproduction, 
      and distribution as defined by Sections 1 through 9 of this document. 

      "Licensor" shall mean the copyright owner or entity authorized by 
      the copyright owner that is granting the License. 

      "Legal Entity" shall mean the union of the acting entity and all 
      other entities that control, are controlled by, or are under common 
      control with that entity. For the purposes of this definition, 
      "control" means (i) the power, direct or indirect, to cause the 
      direction or management of such entity, whether by contract or 
      otherwise, or (ii) ownership of fifty percent (50%) or more of the 
      outstanding shares, or (iii) beneficial ownership of such entity. 

      "You" (or "Your") shall mean an individual or Legal Entity 
      exercising permissions granted by this License. 

      "Source" form shall mean the preferred form for making modifications, 
      including but not limited to software source code, documentation 
      source, and configuration files. 

      "Object" form shall mean any form resulting from mechanical 
      transformation or translation of a Source form, including but 
      not limited to compiled object code, generated documentation, 
      and conversions to other media types. 

      "Work" shall mean the work of authorship, whether in Source or 
      Object form, made available under the License, as indicated by a 
      copyright notice that is included in or attached to the work 
      (an example is provided in the Appendix below). 

      "Derivative Works" shall mean any work, whether in Source or Object 
      form, that is based on (or derived from) the Work and for which the 
      editorial revisions, annotations, elaborations, or other modifications 
      represent, as a whole, an original work of authorship. For the purposes 
      of this License, Derivative Works shall not include works that remain 
      separable from, or merely link (or bind by name) to the interfaces of, 
      the Work and Derivative Works thereof. 

      "Contribution" shall mean any work of authorship, including 
      the original version of the Work and any modifications or additions 
      to that Work or Derivative Works thereof, that is intentionally 
      submitted to Licensor for inclusion in the Work by the copyright owner 
      or by an individual or Legal Entity authorized to submit on behalf of 
      the copyright owner. For the purposes of this definition, "submitted" 
      means any form of electronic, verbal, or written communication sent 
      to the Licensor or its representatives, including but not limited to 
      communication on electronic mailing lists, source code control systems, 
      and issue tracking systems that are managed by, or on behalf of, the 
      Licensor for the purpose of discussing and improving the Work, but 
      excluding communication that is conspicuously marked or otherwise 
      designated in writing by the copyright owner as "Not a Contribution." 

      "Contributor" shall mean Licensor and any individual or Legal Entity 
      on behalf of whom a Contribution has been received by Licensor and 
      subsequently incorporated within the Work. 

   2. Grant of Copyright License. Subject to the terms and conditions of 
      this License, each Contributor hereby grants to You a perpetual, 
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable 
      copyright license to reproduce, prepare Derivative Works of, 
      publicly display, publicly perform, sublicense, and distribute the 
      Work and such Derivative Works in Source or Object form. 

   3. Grant of Patent License. Subject to the terms and conditions of 
      this License, each Contributor hereby grants to You a perpetual, 
      worldwide, non-exclusive, no-charge, royalty-free, irrevocable 
      (except as stated in this section) patent license to make, have made, 
      use, offer to sell, sell, import, and otherwise transfer the Work, 
      where such license applies only to those patent claims licensable 
      by such Contributor that are necessarily infringed by their 
      Contribution(s) alone or by combination of their Contribution(s) 
      with the Work to which such Contribution(s) was submitted. If You 
      institute patent litigation against any entity (including a 
      cross-claim or counterclaim in a lawsuit) alleging that the Work 
      or a Contribution incorporated within the Work constitutes direct 
      or contributory patent infringement, then any patent licenses 
      granted to You under this License for that Work shall terminate 
      as of the date such litigation is filed. 

   4. Redistribution. You may reproduce and distribute copies of the 
      Work or Derivative Works thereof in any medium, with or without 
      modifications, and in Source or Object form, provided that You 
      meet the following conditions: 

      (a) You must give any other recipients of the Work or 
          Derivative Works a copy of this License; and 

      (b) You must cause any modified files to carry prominent notices 
          stating that You changed the files; and 

      (c) You must retain, in the Source form of any Derivative Works 
          that You distribute, all copyright, patent, trademark, and 
          attribution notices from the Source form of the Work, 
          excluding those notices that do not pertain to any part of 
          the Derivative Works; and 

      (d) If the Work includes a "NOTICE" text file as part of its 
          distribution, then any Derivative Works that You distribute must 
          include a readable copy of the attribution notices contained 
          within such NOTICE file, excluding those notices that do not 
          pertain to any part of the Derivative Works, in at least one 
          of the following places: within a NOTICE text file distributed 
          as part of the Derivative Works; within the Source form or 
          documentation, if provided along with the Derivative Works; or, 
          within a display generated by the Derivative Works, if and 
          wherever such third-party notices normally appear. The contents 
          of the NOTICE file are for informational purposes only and 
          do not modify the License. You may add Your own attribution 
          notices within Derivative Works that You distribute, alongside 
          or as an addendum to the NOTICE text from the Work, provided 
          that such additional attribution notices cannot be construed 
          as modifying the License. 

      You may add Your own copyright statement to Your modifications and 
      may provide additional or different license terms and conditions 
      for use, reproduction, or distribution of Your modifications, or 
      for any such Derivative Works as a whole, provided Your use, 
      reproduction, and distribution of the Work otherwise complies with 
      the conditions stated in this License. 

   5. Submission of Contributions. Unless You explicitly state otherwise, 
      any Contribution intentionally submitted for inclusion in the Work 
      by You to the Licensor shall be under the terms and conditions of 
      this License, without any additional terms or conditions. 
      Notwithstanding the above, nothing herein shall supersede or modify 
      the terms of any separate license agreement you may have executed 
      with Licensor regarding such Contributions. 

   6. Trademarks. This License does not grant permission to use the trade 
      names, trademarks, service marks, or product names of the Licensor, 
      except as required for reasonable and customary use in describing the 
      origin of the Work and reproducing the content of the NOTICE file. 

   7. Disclaimer of Warranty. Unless required by applicable law or 
      agreed to in writing, Licensor provides the Work (and each 
      Contributor provides its Contributions) on an "AS IS" BASIS, 
      WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or 
      implied, including, without limitation, any warranties or conditions 
      of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A 
      PARTICULAR PURPOSE. You are solely responsible for determining the 
      appropriateness of using or redistributing the Work and assume any 
      risks associated with Your exercise of permissions under this License. 

   8. Limitation of Liability. In no event and under no legal theory, 
      whether in tort (including negligence), contract, or otherwise, 
      unless required by applicable law (such as deliberate and grossly 
      negligent acts) or agreed to in writing, shall any Contributor be 
      liable to You for damages, including any direct, indirect, special, 
      incidental, or consequential damages of any character arising as a 
      result of this License or out of the use or inability to use the 
      Work (including but not limited to damages for loss of goodwill, 
      work stoppage, computer failure or malfunction, or any and all 
      other commercial damages or losses), even if such Contributor 
      has been advised of the possibility of such damages. 

   9. Accepting Warranty or Additional Liability. While redistributing 
      the Work or Derivative Works thereof, You may choose to offer, 
      and charge a fee for, acceptance of support, warranty, indemnity, 
      or other liability obligations and/or rights consistent with this 
      License. However, in accepting such obligations, You may act only 
      on Your own behalf and on Your sole responsibility, not on behalf 
      of any other Contributor, and only if You agree to indemnify, 
      defend, and hold each Contributor harmless for any liability 
      incurred by, or claims asserted against, such Contributor by reason 
      of your accepting any such warranty or additional liability. 

   END OF TERMS AND CONDITIONS 

   APPENDIX: How to apply the Apache License to your work. 

      To apply the Apache License to your work, attach the following 
      boilerplate notice, with the fields enclosed by brackets "[]" 
      replaced with your own identifying information. (Don't include 
      the brackets!)  The text should be enclosed in the appropriate 
      comment syntax for the file format. We also recommend that a 
      file or class name and description of purpose be included on the 
      same "printed page" as the copyright notice for easier 
      identification within third-party archives. 

   Copyright 1999-2005 The Apache Software Foundation 

   Licensed under the Apache License, Version 2.0 (the "License"); 
   you may not use this file except in compliance with the License. 
   You may obtain a copy of the License at 

       http://www.apache.org/licenses/LICENSE-2.0 

   Unless required by applicable law or agreed to in writing, software 
   distributed under the License is distributed on an "AS IS" BASIS, 
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
   See the License for the specific language governing permissions and 
   limitations under the License. 
</code></pre>

<p><br></p>

<h4>
<a class="anchor" href="#gnu-general-public-license-version-3"><span class="octicon octicon-link"></span></a>GNU General Public License, Version 3</h4>

<pre><code>                    GNU GENERAL PUBLIC LICENSE 
                       Version 3, 29 June 2007 

 Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt; 
 Everyone is permitted to copy and distribute verbatim copies 
 of this license document, but changing it is not allowed. 

                            Preamble 

  The GNU General Public License is a free, copyleft license for 
software and other kinds of works. 

  The licenses for most software and other practical works are designed 
to take away your freedom to share and change the works.  By contrast, 
the GNU General Public License is intended to guarantee your freedom to 
share and change all versions of a program--to make sure it remains free 
software for all its users.  We, the Free Software Foundation, use the 
GNU General Public License for most of our software; it applies also to 
any other work released this way by its authors.  You can apply it to 
your programs, too. 

  When we speak of free software, we are referring to freedom, not 
price.  Our General Public Licenses are designed to make sure that you 
have the freedom to distribute copies of free software (and charge for 
them if you wish), that you receive source code or can get it if you 
want it, that you can change the software or use pieces of it in new 
free programs, and that you know you can do these things. 

  To protect your rights, we need to prevent others from denying you 
these rights or asking you to surrender the rights.  Therefore, you have 
certain responsibilities if you distribute copies of the software, or if 
you modify it: responsibilities to respect the freedom of others. 

  For example, if you distribute copies of such a program, whether 
gratis or for a fee, you must pass on to the recipients the same 
freedoms that you received.  You must make sure that they, too, receive 
or can get the source code.  And you must show them these terms so they 
know their rights. 

  Developers that use the GNU GPL protect your rights with two steps: 
(1) assert copyright on the software, and (2) offer you this License 
giving you legal permission to copy, distribute and/or modify it. 

  For the developers' and authors' protection, the GPL clearly explains 
that there is no warranty for this free software.  For both users' and 
authors' sake, the GPL requires that modified versions be marked as 
changed, so that their problems will not be attributed erroneously to 
authors of previous versions. 

  Some devices are designed to deny users access to install or run 
modified versions of the software inside them, although the manufacturer 
can do so.  This is fundamentally incompatible with the aim of 
protecting users' freedom to change the software.  The systematic 
pattern of such abuse occurs in the area of products for individuals to 
use, which is precisely where it is most unacceptable.  Therefore, we 
have designed this version of the GPL to prohibit the practice for those 
products.  If such problems arise substantially in other domains, we 
stand ready to extend this provision to those domains in future versions 
of the GPL, as needed to protect the freedom of users. 

  Finally, every program is threatened constantly by software patents. 
States should not allow patents to restrict development and use of 
software on general-purpose computers, but in those that do, we wish to 
avoid the special danger that patents applied to a free program could 
make it effectively proprietary.  To prevent this, the GPL assures that 
patents cannot be used to render the program non-free. 

  The precise terms and conditions for copying, distribution and 
modification follow. 

                       TERMS AND CONDITIONS 

  0. Definitions. 

  "This License" refers to version 3 of the GNU General Public License. 

  "Copyright" also means copyright-like laws that apply to other kinds of 
works, such as semiconductor masks. 

  "The Program" refers to any copyrightable work licensed under this 
License.  Each licensee is addressed as "you".  "Licensees" and 
"recipients" may be individuals or organizations. 

  To "modify" a work means to copy from or adapt all or part of the work 
in a fashion requiring copyright permission, other than the making of an 
exact copy.  The resulting work is called a "modified version" of the 
earlier work or a work "based on" the earlier work. 

  A "covered work" means either the unmodified Program or a work based 
on the Program. 

  To "propagate" a work means to do anything with it that, without 
permission, would make you directly or secondarily liable for 
infringement under applicable copyright law, except executing it on a 
computer or modifying a private copy.  Propagation includes copying, 
distribution (with or without modification), making available to the 
public, and in some countries other activities as well. 

  To "convey" a work means any kind of propagation that enables other 
parties to make or receive copies.  Mere interaction with a user through 
a computer network, with no transfer of a copy, is not conveying. 

  An interactive user interface displays "Appropriate Legal Notices" 
to the extent that it includes a convenient and prominently visible 
feature that (1) displays an appropriate copyright notice, and (2) 
tells the user that there is no warranty for the work (except to the 
extent that warranties are provided), that licensees may convey the 
work under this License, and how to view a copy of this License.  If 
the interface presents a list of user commands or options, such as a 
menu, a prominent item in the list meets this criterion. 

  1. Source Code. 

  The "source code" for a work means the preferred form of the work 
for making modifications to it.  "Object code" means any non-source 
form of a work. 

  A "Standard Interface" means an interface that either is an official 
standard defined by a recognized standards body, or, in the case of 
interfaces specified for a particular programming language, one that 
is widely used among developers working in that language. 

  The "System Libraries" of an executable work include anything, other 
than the work as a whole, that (a) is included in the normal form of 
packaging a Major Component, but which is not part of that Major 
Component, and (b) serves only to enable use of the work with that 
Major Component, or to implement a Standard Interface for which an 
implementation is available to the public in source code form.  A 
"Major Component", in this context, means a major essential component 
(kernel, window system, and so on) of the specific operating system 
(if any) on which the executable work runs, or a compiler used to 
produce the work, or an object code interpreter used to run it. 

  The "Corresponding Source" for a work in object code form means all 
the source code needed to generate, install, and (for an executable 
work) run the object code and to modify the work, including scripts to 
control those activities.  However, it does not include the work's 
System Libraries, or general-purpose tools or generally available free 
programs which are used unmodified in performing those activities but 
which are not part of the work.  For example, Corresponding Source 
includes interface definition files associated with source files for 
the work, and the source code for shared libraries and dynamically 
linked subprograms that the work is specifically designed to require, 
such as by intimate data communication or control flow between those 
subprograms and other parts of the work. 

  The Corresponding Source need not include anything that users 
can regenerate automatically from other parts of the Corresponding 
Source. 

  The Corresponding Source for a work in source code form is that 
same work. 

  2. Basic Permissions. 

  All rights granted under this License are granted for the term of 
copyright on the Program, and are irrevocable provided the stated 
conditions are met.  This License explicitly affirms your unlimited 
permission to run the unmodified Program.  The output from running a 
covered work is covered by this License only if the output, given its 
content, constitutes a covered work.  This License acknowledges your 
rights of fair use or other equivalent, as provided by copyright law. 

  You may make, run and propagate covered works that you do not 
convey, without conditions so long as your license otherwise remains 
in force.  You may convey covered works to others for the sole purpose 
of having them make modifications exclusively for you, or provide you 
with facilities for running those works, provided that you comply with 
the terms of this License in conveying all material for which you do 
not control copyright.  Those thus making or running the covered works 
for you must do so exclusively on your behalf, under your direction 
and control, on terms that prohibit them from making any copies of 
your copyrighted material outside their relationship with you. 

  Conveying under any other circumstances is permitted solely under 
the conditions stated below.  Sublicensing is not allowed; section 10 
makes it unnecessary. 

  3. Protecting Users' Legal Rights From Anti-Circumvention Law. 

  No covered work shall be deemed part of an effective technological 
measure under any applicable law fulfilling obligations under article 
11 of the WIPO copyright treaty adopted on 20 December 1996, or 
similar laws prohibiting or restricting circumvention of such 
measures. 

  When you convey a covered work, you waive any legal power to forbid 
circumvention of technological measures to the extent such circumvention 
is effected by exercising rights under this License with respect to 
the covered work, and you disclaim any intention to limit operation or 
modification of the work as a means of enforcing, against the work's 
users, your or third parties' legal rights to forbid circumvention of 
technological measures. 

  4. Conveying Verbatim Copies. 

  You may convey verbatim copies of the Program's source code as you 
receive it, in any medium, provided that you conspicuously and 
appropriately publish on each copy an appropriate copyright notice; 
keep intact all notices stating that this License and any 
non-permissive terms added in accord with section 7 apply to the code; 
keep intact all notices of the absence of any warranty; and give all 
recipients a copy of this License along with the Program. 

  You may charge any price or no price for each copy that you convey, 
and you may offer support or warranty protection for a fee. 

  5. Conveying Modified Source Versions. 

  You may convey a work based on the Program, or the modifications to 
produce it from the Program, in the form of source code under the 
terms of section 4, provided that you also meet all of these conditions: 

    a) The work must carry prominent notices stating that you modified 
    it, and giving a relevant date. 

    b) The work must carry prominent notices stating that it is 
    released under this License and any conditions added under section 
    7.  This requirement modifies the requirement in section 4 to 
    "keep intact all notices". 

    c) You must license the entire work, as a whole, under this 
    License to anyone who comes into possession of a copy.  This 
    License will therefore apply, along with any applicable section 7 
    additional terms, to the whole of the work, and all its parts, 
    regardless of how they are packaged.  This License gives no 
    permission to license the work in any other way, but it does not 
    invalidate such permission if you have separately received it. 

    d) If the work has interactive user interfaces, each must display 
    Appropriate Legal Notices; however, if the Program has interactive 
    interfaces that do not display Appropriate Legal Notices, your 
    work need not make them do so. 

  A compilation of a covered work with other separate and independent 
works, which are not by their nature extensions of the covered work, 
and which are not combined with it such as to form a larger program, 
in or on a volume of a storage or distribution medium, is called an 
"aggregate" if the compilation and its resulting copyright are not 
used to limit the access or legal rights of the compilation's users 
beyond what the individual works permit.  Inclusion of a covered work 
in an aggregate does not cause this License to apply to the other 
parts of the aggregate. 

  6. Conveying Non-Source Forms. 

  You may convey a covered work in object code form under the terms 
of sections 4 and 5, provided that you also convey the 
machine-readable Corresponding Source under the terms of this License, 
in one of these ways: 

    a) Convey the object code in, or embodied in, a physical product 
    (including a physical distribution medium), accompanied by the 
    Corresponding Source fixed on a durable physical medium 
    customarily used for software interchange. 

    b) Convey the object code in, or embodied in, a physical product 
    (including a physical distribution medium), accompanied by a 
    written offer, valid for at least three years and valid for as 
    long as you offer spare parts or customer support for that product 
    model, to give anyone who possesses the object code either (1) a 
    copy of the Corresponding Source for all the software in the 
    product that is covered by this License, on a durable physical 
    medium customarily used for software interchange, for a price no 
    more than your reasonable cost of physically performing this 
    conveying of source, or (2) access to copy the 
    Corresponding Source from a network server at no charge. 

    c) Convey individual copies of the object code with a copy of the 
    written offer to provide the Corresponding Source.  This 
    alternative is allowed only occasionally and noncommercially, and 
    only if you received the object code with such an offer, in accord 
    with subsection 6b. 

    d) Convey the object code by offering access from a designated 
    place (gratis or for a charge), and offer equivalent access to the 
    Corresponding Source in the same way through the same place at no 
    further charge.  You need not require recipients to copy the 
    Corresponding Source along with the object code.  If the place to 
    copy the object code is a network server, the Corresponding Source 
    may be on a different server (operated by you or a third party) 
    that supports equivalent copying facilities, provided you maintain 
    clear directions next to the object code saying where to find the 
    Corresponding Source.  Regardless of what server hosts the 
    Corresponding Source, you remain obligated to ensure that it is 
    available for as long as needed to satisfy these requirements. 

    e) Convey the object code using peer-to-peer transmission, provided 
    you inform other peers where the object code and Corresponding 
    Source of the work are being offered to the general public at no 
    charge under subsection 6d. 

  A separable portion of the object code, whose source code is excluded 
from the Corresponding Source as a System Library, need not be 
included in conveying the object code work. 

  A "User Product" is either (1) a "consumer product", which means any 
tangible personal property which is normally used for personal, family, 
or household purposes, or (2) anything designed or sold for incorporation 
into a dwelling.  In determining whether a product is a consumer product, 
doubtful cases shall be resolved in favor of coverage.  For a particular 
product received by a particular user, "normally used" refers to a 
typical or common use of that class of product, regardless of the status 
of the particular user or of the way in which the particular user 
actually uses, or expects or is expected to use, the product.  A product 
is a consumer product regardless of whether the product has substantial 
commercial, industrial or non-consumer uses, unless such uses represent 
the only significant mode of use of the product. 

  "Installation Information" for a User Product means any methods, 
procedures, authorization keys, or other information required to install 
and execute modified versions of a covered work in that User Product from 
a modified version of its Corresponding Source.  The information must 
suffice to ensure that the continued functioning of the modified object 
code is in no case prevented or interfered with solely because 
modification has been made. 

  If you convey an object code work under this section in, or with, or 
specifically for use in, a User Product, and the conveying occurs as 
part of a transaction in which the right of possession and use of the 
User Product is transferred to the recipient in perpetuity or for a 
fixed term (regardless of how the transaction is characterized), the 
Corresponding Source conveyed under this section must be accompanied 
by the Installation Information.  But this requirement does not apply 
if neither you nor any third party retains the ability to install 
modified object code on the User Product (for example, the work has 
been installed in ROM). 

  The requirement to provide Installation Information does not include a 
requirement to continue to provide support service, warranty, or updates 
for a work that has been modified or installed by the recipient, or for 
the User Product in which it has been modified or installed.  Access to a 
network may be denied when the modification itself materially and 
adversely affects the operation of the network or violates the rules and 
protocols for communication across the network. 

  Corresponding Source conveyed, and Installation Information provided, 
in accord with this section must be in a format that is publicly 
documented (and with an implementation available to the public in 
source code form), and must require no special password or key for 
unpacking, reading or copying. 

  7. Additional Terms. 

  "Additional permissions" are terms that supplement the terms of this 
License by making exceptions from one or more of its conditions. 
Additional permissions that are applicable to the entire Program shall 
be treated as though they were included in this License, to the extent 
that they are valid under applicable law.  If additional permissions 
apply only to part of the Program, that part may be used separately 
under those permissions, but the entire Program remains governed by 
this License without regard to the additional permissions. 

  When you convey a copy of a covered work, you may at your option 
remove any additional permissions from that copy, or from any part of 
it.  (Additional permissions may be written to require their own 
removal in certain cases when you modify the work.)  You may place 
additional permissions on material, added by you to a covered work, 
for which you have or can give appropriate copyright permission. 

  Notwithstanding any other provision of this License, for material you 
add to a covered work, you may (if authorized by the copyright holders of 
that material) supplement the terms of this License with terms: 

    a) Disclaiming warranty or limiting liability differently from the 
    terms of sections 15 and 16 of this License; or 

    b) Requiring preservation of specified reasonable legal notices or 
    author attributions in that material or in the Appropriate Legal 
    Notices displayed by works containing it; or 

    c) Prohibiting misrepresentation of the origin of that material, or 
    requiring that modified versions of such material be marked in 
    reasonable ways as different from the original version; or 

    d) Limiting the use for publicity purposes of names of licensors or 
    authors of the material; or 

    e) Declining to grant rights under trademark law for use of some 
    trade names, trademarks, or service marks; or 

    f) Requiring indemnification of licensors and authors of that 
    material by anyone who conveys the material (or modified versions of 
    it) with contractual assumptions of liability to the recipient, for 
    any liability that these contractual assumptions directly impose on 
    those licensors and authors. 

  All other non-permissive additional terms are considered "further 
restrictions" within the meaning of section 10.  If the Program as you 
received it, or any part of it, contains a notice stating that it is 
governed by this License along with a term that is a further 
restriction, you may remove that term.  If a license document contains 
a further restriction but permits relicensing or conveying under this 
License, you may add to a covered work material governed by the terms 
of that license document, provided that the further restriction does 
not survive such relicensing or conveying. 

  If you add terms to a covered work in accord with this section, you 
must place, in the relevant source files, a statement of the 
additional terms that apply to those files, or a notice indicating 
where to find the applicable terms. 

  Additional terms, permissive or non-permissive, may be stated in the 
form of a separately written license, or stated as exceptions; 
the above requirements apply either way. 

  8. Termination. 

  You may not propagate or modify a covered work except as expressly 
provided under this License.  Any attempt otherwise to propagate or 
modify it is void, and will automatically terminate your rights under 
this License (including any patent licenses granted under the third 
paragraph of section 11). 

  However, if you cease all violation of this License, then your 
license from a particular copyright holder is reinstated (a) 
provisionally, unless and until the copyright holder explicitly and 
finally terminates your license, and (b) permanently, if the copyright 
holder fails to notify you of the violation by some reasonable means 
prior to 60 days after the cessation. 

  Moreover, your license from a particular copyright holder is 
reinstated permanently if the copyright holder notifies you of the 
violation by some reasonable means, this is the first time you have 
received notice of violation of this License (for any work) from that 
copyright holder, and you cure the violation prior to 30 days after 
your receipt of the notice. 

  Termination of your rights under this section does not terminate the 
licenses of parties who have received copies or rights from you under 
this License.  If your rights have been terminated and not permanently 
reinstated, you do not qualify to receive new licenses for the same 
material under section 10. 

  9. Acceptance Not Required for Having Copies. 

  You are not required to accept this License in order to receive or 
run a copy of the Program.  Ancillary propagation of a covered work 
occurring solely as a consequence of using peer-to-peer transmission 
to receive a copy likewise does not require acceptance.  However, 
nothing other than this License grants you permission to propagate or 
modify any covered work.  These actions infringe copyright if you do 
not accept this License.  Therefore, by modifying or propagating a 
covered work, you indicate your acceptance of this License to do so. 

  10. Automatic Licensing of Downstream Recipients. 

  Each time you convey a covered work, the recipient automatically 
receives a license from the original licensors, to run, modify and 
propagate that work, subject to this License.  You are not responsible 
for enforcing compliance by third parties with this License. 

  An "entity transaction" is a transaction transferring control of an 
organization, or substantially all assets of one, or subdividing an 
organization, or merging organizations.  If propagation of a covered 
work results from an entity transaction, each party to that 
transaction who receives a copy of the work also receives whatever 
licenses to the work the party's predecessor in interest had or could 
give under the previous paragraph, plus a right to possession of the 
Corresponding Source of the work from the predecessor in interest, if 
the predecessor has it or can get it with reasonable efforts. 

  You may not impose any further restrictions on the exercise of the 
rights granted or affirmed under this License.  For example, you may 
not impose a license fee, royalty, or other charge for exercise of 
rights granted under this License, and you may not initiate litigation 
(including a cross-claim or counterclaim in a lawsuit) alleging that 
any patent claim is infringed by making, using, selling, offering for 
sale, or importing the Program or any portion of it. 

  11. Patents. 

  A "contributor" is a copyright holder who authorizes use under this 
License of the Program or a work on which the Program is based.  The 
work thus licensed is called the contributor's "contributor version". 

  A contributor's "essential patent claims" are all patent claims 
owned or controlled by the contributor, whether already acquired or 
hereafter acquired, that would be infringed by some manner, permitted 
by this License, of making, using, or selling its contributor version, 
but do not include claims that would be infringed only as a 
consequence of further modification of the contributor version.  For 
purposes of this definition, "control" includes the right to grant 
patent sublicenses in a manner consistent with the requirements of 
this License. 

  Each contributor grants you a non-exclusive, worldwide, royalty-free 
patent license under the contributor's essential patent claims, to 
make, use, sell, offer for sale, import and otherwise run, modify and 
propagate the contents of its contributor version. 

  In the following three paragraphs, a "patent license" is any express 
agreement or commitment, however denominated, not to enforce a patent 
(such as an express permission to practice a patent or covenant not to 
sue for patent infringement).  To "grant" such a patent license to a 
party means to make such an agreement or commitment not to enforce a 
patent against the party. 

  If you convey a covered work, knowingly relying on a patent license, 
and the Corresponding Source of the work is not available for anyone 
to copy, free of charge and under the terms of this License, through a 
publicly available network server or other readily accessible means, 
then you must either (1) cause the Corresponding Source to be so 
available, or (2) arrange to deprive yourself of the benefit of the 
patent license for this particular work, or (3) arrange, in a manner 
consistent with the requirements of this License, to extend the patent 
license to downstream recipients.  "Knowingly relying" means you have 
actual knowledge that, but for the patent license, your conveying the 
covered work in a country, or your recipient's use of the covered work 
in a country, would infringe one or more identifiable patents in that 
country that you have reason to believe are valid. 

  If, pursuant to or in connection with a single transaction or 
arrangement, you convey, or propagate by procuring conveyance of, a 
covered work, and grant a patent license to some of the parties 
receiving the covered work authorizing them to use, propagate, modify 
or convey a specific copy of the covered work, then the patent license 
you grant is automatically extended to all recipients of the covered 
work and works based on it. 

  A patent license is "discriminatory" if it does not include within 
the scope of its coverage, prohibits the exercise of, or is 
conditioned on the non-exercise of one or more of the rights that are 
specifically granted under this License.  You may not convey a covered 
work if you are a party to an arrangement with a third party that is 
in the business of distributing software, under which you make payment 
to the third party based on the extent of your activity of conveying 
the work, and under which the third party grants, to any of the 
parties who would receive the covered work from you, a discriminatory 
patent license (a) in connection with copies of the covered work 
conveyed by you (or copies made from those copies), or (b) primarily 
for and in connection with specific products or compilations that 
contain the covered work, unless you entered into that arrangement, 
or that patent license was granted, prior to 28 March 2007. 

  Nothing in this License shall be construed as excluding or limiting 
any implied license or other defenses to infringement that may 
otherwise be available to you under applicable patent law. 

  12. No Surrender of Others' Freedom. 

  If conditions are imposed on you (whether by court order, agreement or 
otherwise) that contradict the conditions of this License, they do not 
excuse you from the conditions of this License.  If you cannot convey a 
covered work so as to satisfy simultaneously your obligations under this 
License and any other pertinent obligations, then as a consequence you may 
not convey it at all.  For example, if you agree to terms that obligate you 
to collect a royalty for further conveying from those to whom you convey 
the Program, the only way you could satisfy both those terms and this 
License would be to refrain entirely from conveying the Program. 

  13. Use with the GNU Affero General Public License. 

  Notwithstanding any other provision of this License, you have 
permission to link or combine any covered work with a work licensed 
under version 3 of the GNU Affero General Public License into a single 
combined work, and to convey the resulting work.  The terms of this 
License will continue to apply to the part which is the covered work, 
but the special requirements of the GNU Affero General Public License, 
section 13, concerning interaction through a network will apply to the 
combination as such. 

  14. Revised Versions of this License. 

  The Free Software Foundation may publish revised and/or new versions of 
the GNU General Public License from time to time.  Such new versions will 
be similar in spirit to the present version, but may differ in detail to 
address new problems or concerns. 

  Each version is given a distinguishing version number.  If the 
Program specifies that a certain numbered version of the GNU General 
Public License "or any later version" applies to it, you have the 
option of following the terms and conditions either of that numbered 
version or of any later version published by the Free Software 
Foundation.  If the Program does not specify a version number of the 
GNU General Public License, you may choose any version ever published 
by the Free Software Foundation. 

  If the Program specifies that a proxy can decide which future 
versions of the GNU General Public License can be used, that proxy's 
public statement of acceptance of a version permanently authorizes you 
to choose that version for the Program. 

  Later license versions may give you additional or different 
permissions.  However, no additional obligations are imposed on any 
author or copyright holder as a result of your choosing to follow a 
later version. 

  15. Disclaimer of Warranty. 

  THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY 
APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT 
HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY 
OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, 
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM 
IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF 
ALL NECESSARY SERVICING, REPAIR OR CORRECTION. 

  16. Limitation of Liability. 

  IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING 
WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS 
THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY 
GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE 
USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF 
DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD 
PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS), 
EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF 
SUCH DAMAGES. 

  17. Interpretation of Sections 15 and 16. 

  If the disclaimer of warranty and limitation of liability provided 
above cannot be given local legal effect according to their terms, 
reviewing courts shall apply local law that most closely approximates 
an absolute waiver of all civil liability in connection with the 
Program, unless a warranty or assumption of liability accompanies a 
copy of the Program in return for a fee. 

                     END OF TERMS AND CONDITIONS 

            How to Apply These Terms to Your New Programs 

  If you develop a new program, and you want it to be of the greatest 
possible use to the public, the best way to achieve this is to make it 
free software which everyone can redistribute and change under these terms. 

  To do so, attach the following notices to the program.  It is safest 
to attach them to the start of each source file to most effectively 
state the exclusion of warranty; and each file should have at least 
the "copyright" line and a pointer to where the full notice is found. 

    &lt;one line to give the program's name and a brief idea of what it does.&gt; 
    Copyright (C) &lt;year&gt;  &lt;name of author&gt; 

    This program is free software: you can redistribute it and/or modify 
    it under the terms of the GNU General Public License as published by 
    the Free Software Foundation, either version 3 of the License, or 
    (at your option) any later version. 

    This program is distributed in the hope that it will be useful, 
    but WITHOUT ANY WARRANTY; without even the implied warranty of 
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
    GNU General Public License for more details. 

    You should have received a copy of the GNU General Public License 
    along with this program.  If not, see &lt;http://www.gnu.org/licenses/&gt;. 

Also add information on how to contact you by electronic and paper mail. 

  If the program does terminal interaction, make it output a short 
notice like this when it starts in an interactive mode: 

    &lt;program&gt;  Copyright (C) &lt;year&gt;  &lt;name of author&gt; 
    This program comes with ABSOLUTELY NO WARRANTY; for details type `show w'. 
    This is free software, and you are welcome to redistribute it 
    under certain conditions; type `show c' for details. 

The hypothetical commands `show w' and `show c' should show the appropriate 
parts of the General Public License.  Of course, your program's commands 
might be different; for a GUI interface, you would use an "about box". 

  You should also get your employer (if you work as a programmer) or school, 
if any, to sign a "copyright disclaimer" for the program, if necessary. 
For more information on this, and how to apply and follow the GNU GPL, see 
&lt;http://www.gnu.org/licenses/&gt;. 

  The GNU General Public License does not permit incorporating your program 
into proprietary programs.  If your program is a subroutine library, you 
may consider it more useful to permit linking proprietary applications with 
the library.  If this is what you want to do, use the GNU Lesser General 
Public License instead of this License.  But first, please read 
&lt;http://www.gnu.org/philosophy/why-not-lgpl.html&gt;. 
</code></pre>

<p><br></p>

<h4>
<a class="anchor" href="#gnu-lesser-general-public-license-version-3"><span class="octicon octicon-link"></span></a>GNU Lesser General Public license, Version 3</h4>

<pre><code>                   GNU LESSER GENERAL PUBLIC LICENSE 
                       Version 3, 29 June 2007 

 Copyright (C) 2007 Free Software Foundation, Inc. &lt;http://fsf.org/&gt; 
 Everyone is permitted to copy and distribute verbatim copies 
 of this license document, but changing it is not allowed. 


  This version of the GNU Lesser General Public License incorporates 
the terms and conditions of version 3 of the GNU General Public 
License, supplemented by the additional permissions listed below. 

  0. Additional Definitions. 

  As used herein, "this License" refers to version 3 of the GNU Lesser 
General Public License, and the "GNU GPL" refers to version 3 of the GNU 
General Public License. 

  "The Library" refers to a covered work governed by this License, 
other than an Application or a Combined Work as defined below. 

  An "Application" is any work that makes use of an interface provided 
by the Library, but which is not otherwise based on the Library. 
Defining a subclass of a class defined by the Library is deemed a mode 
of using an interface provided by the Library. 

  A "Combined Work" is a work produced by combining or linking an 
Application with the Library.  The particular version of the Library 
with which the Combined Work was made is also called the "Linked 
Version". 

  The "Minimal Corresponding Source" for a Combined Work means the 
Corresponding Source for the Combined Work, excluding any source code 
for portions of the Combined Work that, considered in isolation, are 
based on the Application, and not on the Linked Version. 

  The "Corresponding Application Code" for a Combined Work means the 
object code and/or source code for the Application, including any data 
and utility programs needed for reproducing the Combined Work from the 
Application, but excluding the System Libraries of the Combined Work. 

  1. Exception to Section 3 of the GNU GPL. 

  You may convey a covered work under sections 3 and 4 of this License 
without being bound by section 3 of the GNU GPL. 

  2. Conveying Modified Versions. 

  If you modify a copy of the Library, and, in your modifications, a 
facility refers to a function or data to be supplied by an Application 
that uses the facility (other than as an argument passed when the 
facility is invoked), then you may convey a copy of the modified 
version: 

   a) under this License, provided that you make a good faith effort to 
   ensure that, in the event an Application does not supply the 
   function or data, the facility still operates, and performs 
   whatever part of its purpose remains meaningful, or 

   b) under the GNU GPL, with none of the additional permissions of 
   this License applicable to that copy. 

  3. Object Code Incorporating Material from Library Header Files. 

  The object code form of an Application may incorporate material from 
a header file that is part of the Library.  You may convey such object 
code under terms of your choice, provided that, if the incorporated 
material is not limited to numerical parameters, data structure 
layouts and accessors, or small macros, inline functions and templates 
(ten or fewer lines in length), you do both of the following: 

   a) Give prominent notice with each copy of the object code that the 
   Library is used in it and that the Library and its use are 
   covered by this License. 

   b) Accompany the object code with a copy of the GNU GPL and this license 
   document. 

  4. Combined Works. 

  You may convey a Combined Work under terms of your choice that, 
taken together, effectively do not restrict modification of the 
portions of the Library contained in the Combined Work and reverse 
engineering for debugging such modifications, if you also do each of 
the following: 

   a) Give prominent notice with each copy of the Combined Work that 
   the Library is used in it and that the Library and its use are 
   covered by this License. 

   b) Accompany the Combined Work with a copy of the GNU GPL and this license 
   document. 

   c) For a Combined Work that displays copyright notices during 
   execution, include the copyright notice for the Library among 
   these notices, as well as a reference directing the user to the 
   copies of the GNU GPL and this license document. 

   d) Do one of the following: 

       0) Convey the Minimal Corresponding Source under the terms of this 
       License, and the Corresponding Application Code in a form 
       suitable for, and under terms that permit, the user to 
       recombine or relink the Application with a modified version of 
       the Linked Version to produce a modified Combined Work, in the 
       manner specified by section 6 of the GNU GPL for conveying 
       Corresponding Source. 

       1) Use a suitable shared library mechanism for linking with the 
       Library.  A suitable mechanism is one that (a) uses at run time 
       a copy of the Library already present on the user's computer 
       system, and (b) will operate properly with a modified version 
       of the Library that is interface-compatible with the Linked 
       Version. 

   e) Provide Installation Information, but only if you would otherwise 
   be required to provide such information under section 6 of the 
   GNU GPL, and only to the extent that such information is 
   necessary to install and execute a modified version of the 
   Combined Work produced by recombining or relinking the 
   Application with a modified version of the Linked Version. (If 
   you use option 4d0, the Installation Information must accompany 
   the Minimal Corresponding Source and Corresponding Application 
   Code. If you use option 4d1, you must provide the Installation 
   Information in the manner specified by section 6 of the GNU GPL 
   for conveying Corresponding Source.) 

  5. Combined Libraries. 

  You may place library facilities that are a work based on the 
Library side by side in a single library together with other library 
facilities that are not Applications and are not covered by this 
License, and convey such a combined library under terms of your 
choice, if you do both of the following: 

   a) Accompany the combined library with a copy of the same work based 
   on the Library, uncombined with any other library facilities, 
   conveyed under the terms of this License. 

   b) Give prominent notice with the combined library that part of it 
   is a work based on the Library, and explaining where to find the 
   accompanying uncombined form of the same work. 

  6. Revised Versions of the GNU Lesser General Public License. 

  The Free Software Foundation may publish revised and/or new versions 
of the GNU Lesser General Public License from time to time. Such new 
versions will be similar in spirit to the present version, but may 
differ in detail to address new problems or concerns. 

  Each version is given a distinguishing version number. If the 
Library as you received it specifies that a certain numbered version 
of the GNU Lesser General Public License "or any later version" 
applies to it, you have the option of following the terms and 
conditions either of that published version or of any later version 
published by the Free Software Foundation. If the Library as you 
received it does not specify a version number of the GNU Lesser 
General Public License, you may choose any version of the GNU Lesser 
General Public License ever published by the Free Software Foundation. 

  If the Library as you received it specifies that a proxy can decide 
whether future versions of the GNU Lesser General Public License shall 
apply, that proxy's public statement of acceptance of any version is 
permanent authorization for you to choose that version for the 
Library. 
</code></pre>

<p><br></p>

<h4>
<a class="anchor" href="#eclipse-public-license-version-10"><span class="octicon octicon-link"></span></a>Eclipse Public License, Version 1.0</h4>

<pre><code>Eclipse Public License - v 1.0 

THE ACCOMPANYING PROGRAM IS PROVIDED UNDER THE TERMS OF THIS ECLIPSE PUBLIC 
LICENSE ("AGREEMENT"). ANY USE, REPRODUCTION OR DISTRIBUTION OF THE PROGRAM 
CONSTITUTES RECIPIENT'S ACCEPTANCE OF THIS AGREEMENT. 

1. DEFINITIONS 

"Contribution" means: 

      a) in the case of the initial Contributor, the initial code and 
         documentation distributed under this Agreement, and 
      b) in the case of each subsequent Contributor: 

      i) changes to the Program, and 

      ii) additions to the Program; 

      where such changes and/or additions to the Program originate from and are 
distributed by that particular Contributor. A Contribution 'originates' from a 
Contributor if it was added to the Program by such Contributor itself or anyone 
acting on such Contributor's behalf. Contributions do not include additions to 
the Program which: (i) are separate modules of software distributed in 
conjunction with the Program under their own license agreement, and (ii) are 
not derivative works of the Program. 

"Contributor" means any person or entity that distributes the Program. 

"Licensed Patents " mean patent claims licensable by a Contributor which are 
necessarily infringed by the use or sale of its Contribution alone or when 
combined with the Program. 

"Program" means the Contributions distributed in accordance with this Agreement. 

"Recipient" means anyone who receives the Program under this Agreement, 
including all Contributors. 

2. GRANT OF RIGHTS 

      a) Subject to the terms of this Agreement, each Contributor hereby grants 
Recipient a non-exclusive, worldwide, royalty-free copyright license to 
reproduce, prepare derivative works of, publicly display, publicly perform, 
distribute and sublicense the Contribution of such Contributor, if any, and 
such derivative works, in source code and object code form. 

      b) Subject to the terms of this Agreement, each Contributor hereby grants 
Recipient a non-exclusive, worldwide, royalty-free patent license under 
Licensed Patents to make, use, sell, offer to sell, import and otherwise 
transfer the Contribution of such Contributor, if any, in source code and 
object code form. This patent license shall apply to the combination of the 
Contribution and the Program if, at the time the Contribution is added by the 
Contributor, such addition of the Contribution causes such combination to be 
covered by the Licensed Patents. The patent license shall not apply to any 
other combinations which include the Contribution. No hardware per se is 
licensed hereunder. 

      c) Recipient understands that although each Contributor grants the 
licenses to its Contributions set forth herein, no assurances are provided by 
any Contributor that the Program does not infringe the patent or other 
intellectual property rights of any other entity. Each Contributor disclaims 
any liability to Recipient for claims brought by any other entity based on 
infringement of intellectual property rights or otherwise. As a condition to 
exercising the rights and licenses granted hereunder, each Recipient hereby 
assumes sole responsibility to secure any other intellectual property rights 
needed, if any. For example, if a third party patent license is required to 
allow Recipient to distribute the Program, it is Recipient's responsibility to 
acquire that license before distributing the Program. 

      d) Each Contributor represents that to its knowledge it has sufficient 
copyright rights in its Contribution, if any, to grant the copyright license 
set forth in this Agreement. 

3. REQUIREMENTS 

A Contributor may choose to distribute the Program in object code form under 
its own license agreement, provided that: 

      a) it complies with the terms and conditions of this Agreement; and 

      b) its license agreement: 

      i) effectively disclaims on behalf of all Contributors all warranties and 
conditions, express and implied, including warranties or conditions of title 
and non-infringement, and implied warranties or conditions of merchantability 
and fitness for a particular purpose; 

      ii) effectively excludes on behalf of all Contributors all liability for 
damages, including direct, indirect, special, incidental and consequential 
damages, such as lost profits; 

      iii) states that any provisions which differ from this Agreement are 
offered by that Contributor alone and not by any other party; and 

      iv) states that source code for the Program is available from such 
Contributor, and informs licensees how to obtain it in a reasonable manner on 
or through a medium customarily used for software exchange. 

When the Program is made available in source code form: 

      a) it must be made available under this Agreement; and 

      b) a copy of this Agreement must be included with each copy of the 
Program. 

Contributors may not remove or alter any copyright notices contained within the 
Program. 

Each Contributor must identify itself as the originator of its Contribution, if 
any, in a manner that reasonably allows subsequent Recipients to identify the 
originator of the Contribution. 

4. COMMERCIAL DISTRIBUTION 

Commercial distributors of software may accept certain responsibilities with 
respect to end users, business partners and the like. While this license is 
intended to facilitate the commercial use of the Program, the Contributor who 
includes the Program in a commercial product offering should do so in a manner 
which does not create potential liability for other Contributors. Therefore, if 
a Contributor includes the Program in a commercial product offering, such 
Contributor ("Commercial Contributor") hereby agrees to defend and indemnify 
every other Contributor ("Indemnified Contributor") against any losses, damages 
and costs (collectively "Losses") arising from claims, lawsuits and other legal 
actions brought by a third party against the Indemnified Contributor to the 
extent caused by the acts or omissions of such Commercial Contributor in 
connection with its distribution of the Program in a commercial product 
offering. The obligations in this section do not apply to any claims or Losses 
relating to any actual or alleged intellectual property infringement. In order 
to qualify, an Indemnified Contributor must: a) promptly notify the Commercial 
Contributor in writing of such claim, and b) allow the Commercial Contributor 
to control, and cooperate with the Commercial Contributor in, the defense and 
any related settlement negotiations. The Indemnified Contributor may 
participate in any such claim at its own expense. 

For example, a Contributor might include the Program in a commercial product 
offering, Product X. That Contributor is then a Commercial Contributor. If that 
Commercial Contributor then makes performance claims, or offers warranties 
related to Product X, those performance claims and warranties are such 
Commercial Contributor's responsibility alone. Under this section, the 
Commercial Contributor would have to defend claims against the other 
Contributors related to those performance claims and warranties, and if a court 
requires any other Contributor to pay any damages as a result, the Commercial 
Contributor must pay those damages. 

5. NO WARRANTY 

EXCEPT AS EXPRESSLY SET FORTH IN THIS AGREEMENT, THE PROGRAM IS PROVIDED ON AN 
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, EITHER EXPRESS OR 
IMPLIED INCLUDING, WITHOUT LIMITATION, ANY WARRANTIES OR CONDITIONS OF TITLE, 
NON-INFRINGEMENT, MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE. Each 
Recipient is solely responsible for determining the appropriateness of using 
and distributing the Program and assumes all risks associated with its exercise 
of rights under this Agreement, including but not limited to the risks and 
costs of program errors, compliance with applicable laws, damage to or loss of 
data, programs or equipment, and unavailability or interruption of operations. 

6. DISCLAIMER OF LIABILITY 

EXCEPT AS EXPRESSLY SET FORTH IN THIS AGREEMENT, NEITHER RECIPIENT NOR ANY 
CONTRIBUTORS SHALL HAVE ANY LIABILITY FOR ANY DIRECT, INDIRECT, INCIDENTAL, 
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING WITHOUT LIMITATION LOST 
PROFITS), HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, 
STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY 
WAY OUT OF THE USE OR DISTRIBUTION OF THE PROGRAM OR THE EXERCISE OF ANY RIGHTS 
GRANTED HEREUNDER, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. 

7. GENERAL 

If any provision of this Agreement is invalid or unenforceable under applicable 
law, it shall not affect the validity or enforceability of the remainder of the 
terms of this Agreement, and without further action by the parties hereto, such 
provision shall be reformed to the minimum extent necessary to make such 
provision valid and enforceable. 

If Recipient institutes patent litigation against any 
entity (including a cross-claim or counterclaim in a lawsuit) alleging that the 
Program itself (excluding combinations of the Program with other software or 
hardware) infringes such Recipient's patent(s), then such Recipient's rights 
granted under Section 2(b) shall terminate as of the date such litigation is 
filed. 

All Recipient's rights under this Agreement shall terminate if it fails to 
comply with any of the material terms or conditions of this Agreement and does 
not cure such failure in a reasonable period of time after becoming aware of 
such noncompliance. If all Recipient's rights under this Agreement terminate, 
Recipient agrees to cease use and distribution of the Program as soon as 
reasonably practicable. However, Recipient's obligations under this Agreement 
and any licenses granted by Recipient relating to the Program shall continue 
and survive. 

Everyone is permitted to copy and distribute copies of this Agreement, but in 
order to avoid inconsistency the Agreement is copyrighted and may only be 
modified in the following manner. The Agreement Steward reserves the right to 
publish new versions (including revisions) of this Agreement from time to time. 
No one other than the Agreement Steward has the right to modify this Agreement. 
The Eclipse Foundation is the initial Agreement Steward. The Eclipse Foundation 
may assign the responsibility to 
serve as the Agreement Steward to a suitable separate entity. Each new version 
of the Agreement will be given a distinguishing version number. The Program 
(including Contributions) may always be distributed subject to the version of 
the Agreement under which it was received. In addition, after a new version of 
the Agreement is published, Contributor may elect to distribute the Program 
(including its Contributions) under the new version. Except as expressly stated 
in Sections 2(a) and 2(b) above, Recipient receives no rights or licenses to 
the intellectual property of any Contributor under this Agreement, whether 
expressly, by implication, estoppel or otherwise. All rights in the Program not 
expressly granted under this Agreement are reserved. 

This Agreement is governed by the laws of the State of New York and the 
intellectual property laws of the United States of America. No party to this 
Agreement will bring a legal action under this Agreement more than one year 
after the cause of action arose. Each party waives its rights to a jury trial 
in any resulting litigation. 
</code></pre>

</div>

</t:master-page>