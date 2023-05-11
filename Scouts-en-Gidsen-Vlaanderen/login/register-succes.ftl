<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
<#if section = "content">
    <h2>Registratie geslaagd!</h2>
    <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
        <p>Uw account is klaar voor gebruik</p>
        <button class="btn">Inloggen</button>
    </form>
 </#if>
</@layout.mainLayout>
