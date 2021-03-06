<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->

  <@layout.mainLayout ;section>
    <#if section = "content">
      <#if message?has_content>
        <div class="alert alert-${message.type}">
          <#if message.type='success'><span class="${properties.kcFeedbackSuccessIcon}"></span></#if>
          <#if message.type='warning'><span class="${properties.kcFeedbackWarningIcon}"></span></#if>
          <#if message.type='error'><span class="${properties.kcFeedbackErrorIcon}"></span></#if>
          <#if message.type='info'><span class="${properties.kcFeedbackInfoIcon}"></span></#if>
          <span class="kc-feedback-text">${message.summary?no_esc}</span>
        </div>
      </#if>
      <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <div>
          <label>Voornaam</label>
          <input id="firstname" class="input-field" name="firstname" type="text" autofocus placeholder="Voornaam" value="${(formData.firstname[0])!''}"/>
        </div>
        <div>
          <label>Achternaam</label>
          <input id="lastmame" class="input-field" name="lastname" type="text" autofocus placeholder="Achternaam" value="${(formData.lastname[0])!''}" />
        </div>
        <div>
        <label>E-mail of gsm-nummer</label>
          <input id="email" class="input-field" name="email" type="text" autofocus placeholder="E-mail of gsm-nummer" value="${(formData.email[0])!''}" />
        </div>
        <input id="action" name="action" type= "hidden" value="getUsername"/>
        <button class="btn btn-text">
          Gebruikersnaam opvragen
        </button>
      </form>

      <div id="user-actions">
        <a href="https://wiki.scoutsengidsenvlaanderen.be/handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
        <#if client??>
          <a href="${url.loginUrl}">Inloggen</a>
        </#if>
        <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
          <a id="registration" href="${url.registrationUrl}">Registreren</a>
        <#else>
          <a id="registration" href="https://groepsadmin.scoutsengidsenvlaanderen.be/groepsadmin/gebruiker-aanmaken">Registreren</a>
        </#if>
        <#if client?? && client.baseUrl?has_content>
          <br>
          <a href="${client.baseUrl}">Terug naar de website</a>
        </#if>
      </div>
    </#if>
  </@layout.mainLayout>
