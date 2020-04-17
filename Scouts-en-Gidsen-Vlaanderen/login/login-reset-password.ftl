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
          <label>Gebruikersnaam</label>
          <input id="username" class="input-field" name="username" type="text" autofocus placeholder="Gebruikersnaam of lidnummer" value="${(formData.username?join("")!'')}" tabindex="1" />
          <#if realm.resetPasswordAllowed>
            <a id="loginResetCredentials" href="${url.loginResetCredentialsUrl}&action=getusername">Gebruikersnaam vergeten?</a>
          </#if>
        </div>
        <div>
          <label>E-mail of gsm-nummer</label>
          <input id="email" class="input-field" name="email" type="text" autofocus placeholder="E-mail of gsm-nummer" value="${(formData.email?join("")!'')}" tabindex="2"/>
        </div>
        <input id="action" name="action" type= "hidden" value="passRest"/>
        <button class="btn btn-text" tabindex="3">
          Nieuw wachtwoord aanvragen
        </button>
      </form>

      <div id="user-actions">
        <a href="https://wiki.scoutsengidsenvlaanderen.be/handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
        <#if client??>
          <a href="${url.loginUrl}">Inloggen</a>
        </#if>
        <#if client?? && client.baseUrl?has_content>
          <br>
          <a href="${client.baseUrl}">Terug naar de website</a>
        </#if>
      </div>
    </#if>
  </@layout.mainLayout>
