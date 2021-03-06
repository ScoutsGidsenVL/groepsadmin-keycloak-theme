<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
 <#if section = "content">

  <#if realm.resetPasswordAllowed>
    <script>
      function loginResetCredentials(){
        document.getElementById('loginResetCredentials').click();
      }
    </script>
  <#else>
   <style>
     #loginResetCredentialerror{
       display: none;
     }
   </style>
  </#if>

  <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
    <script>
       function registration(){
        document.getElementById('registration').click();
      }
    </script>
  <#else>
   <style>
     #registrationerror{
       display: none;
     }
   </style>
  </#if>

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
    <div>
      <label>Gebruikersnaam</label>
      <input id="username" class="input-field" name="username" value="${(login.username!'')}" type="text" autofocus placeholder="Gebruikersnaam of lidnummer" tabindex="1" />
      <#if realm.resetPasswordAllowed>
        <a id="loginResetCredentials" href="${url.loginResetCredentialsUrl}&action=getusername">Gebruikersnaam vergeten?</a>
      </#if>
    </div>
    <div>
      <label>Wachtwoord</label>
      <label class="passLabel" id="passLabel">
        <input id="password" class="input-field password" name="password" type="password" autocomplete="off" placeholder="Wachtwoord" tabindex="2"/>
        <#if realm.resetPasswordAllowed>
          <a id="loginResetCredentials" href="${url.loginResetCredentialsUrl}&action=resetpassword">Wachtwoord vergeten?</a>
        <#else>
          <a id="loginResetCredentials" href="https://groepsadmin.scoutsengidsenvlaanderen.be/groepsadmin/nieuw-paswoord.jsp">Wachtwoord vergeten?</a>
        </#if>
      </label>
    </div>
    <#if realm.rememberMe && !usernameEditDisabled??>
      <div class="checkbox">
        <label>
          <#if login.rememberMe??>
            <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3" checked> ${msg("rememberMe")}
          <#else>
            <input id="rememberMe" name="rememberMe" type="checkbox" tabindex="3"> ${msg("rememberMe")}
          </#if>
        </label>
      </div>
    </#if>
    <button class="btn" tabindex="3">
      <i class="sgv-common-arrow-right"></i>
    </button>
  </form>

  <div id="user-actions">
    <a href="https://wiki.scoutsengidsenvlaanderen.be/handleidingen:groepsadmin:scoutsengidenvlaanderen_login" target="_blank">Help</a>
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
 <#elseif section = "action">
 <#elseif section = "reaction">
 </#if>
</@layout.mainLayout>
