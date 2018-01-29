<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
<#if section = "content">
<div id="login-form">
    <i class="sgv-common-scouts-en-gidsen-vlaanderen" id="logo"></i>
    <#if message?has_content>
        <div class="alert alert-${message.type}">
            <#if message.type='success'><span class="${properties.kcFeedbackSuccessIcon}"></span></#if>
            <#if message.type='warning'><span class="${properties.kcFeedbackWarningIcon}"></span></#if>
            <#if message.type='error'><span class="${properties.kcFeedbackErrorIcon}"></span></#if>
            <#if message.type='info'><span class="${properties.kcFeedbackInfoIcon}"></span></#if>
            <span class="kc-feedback-text">${message.summary}</span>
        </div>
    </#if>
    <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
        
        <div>
            <label>Voornaam</label>
            <input id="username" class="input-field" name="username" type="text" autofocus placeholder="Uw gebruikersaam" />
        </div>
        <div>
            <label>Achternaam</label>
            <input id="phone-email" class="input-field" name="phone-email" type="text" autofocus placeholder="GSM / e-mail" />
        </div>
        <div>
            <label>Lidnummer</label>
            <input id="phone-email" class="input-field" name="phone-email" type="text" autofocus placeholder="GSM / e-mail" />
        </div>
        <div>
            <label>E-mailadres</label>
            <input id="phone-email" class="input-field" name="phone-email" type="text" autofocus placeholder="GSM / e-mail" />
        </div>
        <div>
            <label>Gebruikersnaam</label>
            <input id="phone-email" class="input-field" name="phone-email" type="text" autofocus placeholder="GSM / e-mail" />
        </div>
        <div>
            <label>wachtwoord</label>
            <input id="phone-email" class="input-field" name="phone-email" type="text" autofocus placeholder="GSM / e-mail" />
        </div>
        <div>
            <label>wachtwoordcontrole</label>
            <input id="phone-email" class="input-field" name="phone-email" type="text" autofocus placeholder="GSM / e-mail" />
        </div>
        <button class="btn btn-text">
            Account aanmaken
        </button>
    </form>

    <div id="user-actions">
        <a href="${url.loginUrl}">Gebruikersnaam vergeten?</a></span>
        <a href="${url.loginUrl}">Terug</a></span>
        <a href="https://wiki.scoutsengidsenvlaanderen.be/doku.php?id=handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
    </div>
</div>
</div>
 </#if>
</@layout.mainLayout>