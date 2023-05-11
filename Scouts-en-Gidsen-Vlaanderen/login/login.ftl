<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
 <#if section = "content">

  <h2>Log in met je Scouts en Gidsen Vlaanderen account</h2>

  <#if message?has_content>
    <div class="alert alert-${message.type}">
      <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon}"></span></#if>
      <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon}"></span></#if>
      <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon}"></span></#if>
      <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon}"></span></#if>
      <span class="kc-feedback-text">${message.summary?no_esc}</span>
    </div>
  </#if>
  <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
    <input class="input-field" id="username" name="username" value="${(login.username!'')}" type="text" autofocus placeholder="Gebruikersnaam of lidnummer" tabindex="1" />
    <#if realm.resetPasswordAllowed>
      <div class="input-subtext">
        <a id="loginResetCredentials" href="${url.loginResetCredentialsUrl}&action=getusername">Gebruikersnaam vergeten?</a>
      </div>
    </#if>

    <input class="input-field password" id="password" name="password" type="password" autocomplete="off" placeholder="Wachtwoord" tabindex="2"/>
    <div class="input-subtext">
      <#if realm.resetPasswordAllowed>
        <a id="loginResetCredentials" href="${url.loginResetCredentialsUrl}&action=resetpassword">Wachtwoord vergeten?</a>
      <#else>
        <a id="loginResetCredentials" href="https://groepsadmin.scoutsengidsenvlaanderen.be/groepsadmin/nieuw-paswoord.jsp">Wachtwoord vergeten?</a>
      </#if>
    </div>

    <#if realm.rememberMe && !usernameEditDisabled??>
      <div class="input-checkbox">
        <#if login.rememberMe??>
          <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> 
        <#else>
          <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3">
        </#if>
        <label for="rememberMe">${msg("rememberMe")}</label>
      </div>
    </#if>

    <button class="btn" tabindex="3">
      Inloggen
    </button>
  </form>

  <div class="user-actions">
    <span>Nog geen account?
    <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
      <a id="registration" href="${url.registrationUrl}">Klik hier om te registeren.</a>
    <#else>
      <a id="registration" href="https://groepsadmin.scoutsengidsenvlaanderen.be/groepsadmin/gebruiker-aanmaken">Klik hier om te registeren.</a>
    </#if>
    </span>
  </div>
 <#elseif section = "action">
 <#elseif section = "reaction">
 </#if>
</@layout.mainLayout>
