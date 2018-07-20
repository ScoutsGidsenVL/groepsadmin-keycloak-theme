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
            <span class="kc-feedback-text">${message.summary}</span>
        </div>
    </#if>
    <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
        <section class="regist-sub-section">
            <h2>Account</h2>
            <div>
                <label>Gebruikersnaam*</label>
                <input id="username" class="input-field" name="username" type="text" autofocus placeholder="Gebruikersnaam" value="${(formData.username?join("")!'')}" />
            </div>
            <div>
                <label>Wachtwoord*</label>
                <label class="passLabel" id="passLabel">
                    <input id="password" class="input-field" name="password" type="password" autofocus placeholder="Wachtwoord"/>
                </label>
            </div>
            <div>
                <label>Wachtwoordcontrole*</label>
                <label class="passLabel" id="passLabelconfirm">
                    <input id="password-confirm" class="input-field" name="password-confirm" type="password" autofocus placeholder="Herhaal wachtwoord" />
                </label>
            </div>
        </section>
        <button class="btn btn-text">
            Volgende
        </button>
    </form>

    <div id="user-actions">
        <a href="${url.loginUrl}">Terug</a>
        <a href="https://wiki.scoutsengidsenvlaanderen.be/doku.php?id=handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
    </div>

 </#if>
</@layout.mainLayout>