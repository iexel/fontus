<#--
This file is a freemaker template which is used by the License Maven Plugin to generate the
list of third-party libraries and their licenses. This list is used in the documentation
after some manual enhancement.

Example Usage:
cd <the root directory of the Maven parent project>
mvn license:aggregate-add-third-party -Dlicense.fileTemplate="./license-maven-plugin-template.ftl"

If the license.fileTemplate parameter is omitted, the default template will be used instead.

The output (list of artifacts and their licenses) can be found in target/generated-sources/license/THIRD-PARTY.txt.

Comment out all references to this project's own artifacts in all child POMs before using the plugin
as the plugin cannot handle them for some reason. Excluding these artifacts with plugin parameters
does not work for some reason.
-->

The project uses ${dependencyMap?size} Maven artifacts:

<#list dependencyMap as dependency>
<#assign prjInfo = dependency.getKey()/>
<#assign licenses = dependency.getValue()/>
${printDependencyInfo(prjInfo, licenses)}
</#list>


<#function printDependencyInfo prjInfo, licenses>

	<#assign licenseNames = ""/>
	<#list licenses as l>
		<#assign licenseNames = licenseNames + " (" + l + ")"/>
	</#list>

	<#if prjInfo.name?index_of('Unnamed') &gt; -1>
		<#assign prjName = prjInfo.artifactId/>
	<#else>
		<#assign prjName = prjInfo.name/>
	</#if>

	<#return "####" + prjName +
		"\n**Maven artifact:**  groupId: " + prjInfo.groupId + ",  artifactId: " +
		prjInfo.artifactId + ",  version: " + prjInfo.version +
		"<br>\n**Project URL:**  " + (prjInfo.url!"-") +
		"<br>\n**License names:**  " + licenseNames +
		"<br>\n**Source of the notice and license information:** " + 
		"<br>\n**Comments:**" +
		"<br>\n**Notice:**\n```\n```" +
		"\n**License:**\n```\n```\n\n">
</#function>

