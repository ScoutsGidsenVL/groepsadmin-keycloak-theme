<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->

  <@layout.mainLayout ;section>
    <#if section = "content">
      <h2>Wachtwoord vergeten?</h2>
      <#if message?has_content>
        <div class="alert alert-${message.type}">
          <span class="kc-feedback-text">${message.summary?no_esc}</span>
        </div>
      </#if>
      <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
        <input class="input-field" id="username" name="username" type="text" autofocus placeholder="Gebruikersnaam of lidnummer" value="${(formData.username[0])!''}" tabindex="1" />
        <#if realm.resetPasswordAllowed>
          <span class="input-subtext">
            <a id="loginResetCredentials" href="${url.loginResetCredentialsUrl}&action=getusername">Gebruikersnaam vergeten?</a>
          </span>
        </#if>
        <input class="input-field" id="email" name="email" type="text" autofocus placeholder="E-mail of gsm-nummer" value="${(formData.email[0])!''}" tabindex="2"/>
        <input id="action" name="action" type= "hidden" value="passRest"/>
        <button class="btn" tabindex="3">
          Nieuw wachtwoord aanvragen
        </button>
      </form>

      <div class="user-actions">
        <#if client??>
          <a class="btn btn-secondary" href="${url.loginUrl}">Inloggen</a>
        </#if>
      </div>
    </#if>
  </@layout.mainLayout>
