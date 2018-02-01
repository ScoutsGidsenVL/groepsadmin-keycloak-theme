<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
	<#if section = "content">
	<#elseif section = "action">
		<#include "get-reset-password.ftl">
	<#elseif section = "reaction">
		<#include "get-reset-username.ftl">
	</#if>
</@layout.mainLayout>