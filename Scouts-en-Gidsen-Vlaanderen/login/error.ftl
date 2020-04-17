<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
    <#if section = "content">
        <h2 class="textError subTitle" >Oeps!</h2>
        <p class="textError">Sorry we kunnen deze pagina niet vinden.</p>
        <#if client?? && client.baseUrl?has_content>
            <p class="textError">
                Ga <a class="linkText" href="${client.baseUrl}">terug naar de website</a> en probeer opnieuw.
            </p>
        </#if>
    </#if>
</@layout.mainLayout>
