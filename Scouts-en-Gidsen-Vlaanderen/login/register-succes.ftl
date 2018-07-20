<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
<#if section = "content">
    <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
    <div class="center">
         <h2>Registratie geslaagd</h2>
    <p> U Account is klaar voor gebruik</p>
   <button class="btn btn-text">
            Login
        </button>
    </form>
    </div>
 </#if>
</@layout.mainLayout>