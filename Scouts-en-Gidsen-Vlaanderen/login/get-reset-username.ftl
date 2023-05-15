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
        <input id="firstname" name="firstname" class="input-field" type="text" autofocus placeholder="Voornaam" value="${(formData.firstname[0])!''}"/>
        <input id="lastmame" name="lastname" class="input-field" type="text" autofocus placeholder="Achternaam" value="${(formData.lastname[0])!''}" />
        <input id="email" name="email" class="input-field" type="text" autofocus placeholder="E-mail of gsm-nummer" value="${(formData.email[0])!''}" />
        <input id="action" name="action" type= "hidden" value="getUsername"/>
        <button class="btn">
          Gebruikersnaam opvragen
        </button>
      </form>

      <div class="user-actions">
        <#if client??>
          <a class="btn btn-secondary" href="${url.loginUrl}">Inloggen</a>
        </#if>
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
          <a class="btn btn-secondary" id="registration" href="${url.registrationUrl}">Registreren</a>
        <#else>
          <a class="btn btn-secondary" id="registration" href="https://groepsadmin.scoutsengidsenvlaanderen.be/groepsadmin/gebruiker-aanmaken">Registreren</a>
        </#if>
      </div>
    </#if>
  </@layout.mainLayout>
