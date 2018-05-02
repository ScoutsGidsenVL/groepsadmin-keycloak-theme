<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
 <#if section = "content">
   <#if message?has_content>
        <div class="alert alert-${message.type}">
            <#if message.type = 'success'><span class="${properties.kcFeedbackSuccessIcon}"></span></#if>
            <#if message.type = 'warning'><span class="${properties.kcFeedbackWarningIcon}"></span></#if>
            <#if message.type = 'error'><span class="${properties.kcFeedbackErrorIcon}"></span></#if>
            <#if message.type = 'info'><span class="${properties.kcFeedbackInfoIcon}"></span></#if>
            <span class="kc-feedback-text">${message.summary}</span>
        </div>
  </#if>
  <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
    <div>
      <label>Gebruikersnaam</label>
      <input id="username" class="input-field" name="username" value="${(login.username!'')?html}" type="text" autofocus placeholder="Uw gebruikersaam" />

    </div>
    <div>
      <label>Wachtwoord</label>
      <label class="passLabel" id="passLabel">
        <input id="password"  class="input-field password" name="password" type="password" autocomplete="off" placeholder="Uw wachtwoord" />
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
    <button class="btn">
      <i class="sgv-common-arrow-right"></i>
    </button>
  </form>
  
  <div id="user-actions">
    <#if realm.resetPasswordAllowed>
      <a href="${url.loginResetCredentialsUrl}">Wachtwoord vergeten?</a>
    </#if>
    <#if realm.password && realm.registrationAllowed && !usernameEditDisabled??>
      <a href="${url.registrationUrl}">Registreer</a>
    </#if>
      <a href="https://wiki.scoutsengidsenvlaanderen.be/doku.php?id=handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
  </div>
  <#elseif section = "action">
  <#elseif section = "reaction">
 </#if>
</@layout.mainLayout>