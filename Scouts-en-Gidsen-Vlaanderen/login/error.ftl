<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
    <#if section = "content">
        <h2 class="textError subTitle" >Oeps!</h2>
        <p class="textError">Sorry we kunnen deze pagina niet vinden, ga terug naar de <a class="linkText" href="${client.baseUrl}">login pagina</a> en probeer opnieuw.</p>
    </#if>
</@layout.mainLayout>