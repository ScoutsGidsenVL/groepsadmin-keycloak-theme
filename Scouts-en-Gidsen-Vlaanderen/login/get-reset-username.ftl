<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->

  <@layout.mainLayout ;section>
    <#if section = "content">
      <h2>Gebruikersnaam vergeten?</h2>
      <#if message?has_content>
        <div class="alert alert-${message.type}">
          <span class="kc-feedback-text">${message.summary?no_esc}</span>
        </div>
      </#if>
      <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <input class="input-field" id="firstname" name="firstname" type="text" autofocus placeholder="Voornaam" value="${(formData.firstname[0])!''}"/>
        <input class="input-field" id="lastmame" name="lastname" type="text" autofocus placeholder="Achternaam" value="${(formData.lastname[0])!''}" />
        <input class="input-field" id="email" name="email" type="text" autofocus placeholder="E-mail of gsm-nummer" value="${(formData.email[0])!''}" />
        <input id="action" name="action" type= "hidden" value="getUsername"/>
        <button class="btn">
          Gebruikersnaam opvragen
        </button>
      </form>

      <div class="user-actions">
        <#if client??>
          <a class="btn btn-secondary" href="${url.loginUrl}">Terug naar inloggen</a>
        </#if>
      </div>
    </#if>
  </@layout.mainLayout>
