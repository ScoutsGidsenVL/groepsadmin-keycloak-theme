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
    <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
        <section class="regist-sub-section">
            <h2>Account</h2>
            <div>
                <label>Gebruikersnaam *</label>
                <input id="username" class="input-field" name="username" type="text" autofocus placeholder="Gebruikersnaam" value="${(formData.username?join("")!'')}" />
            </div>
            <div>
                <label>Wachtwoord *</label>
                <label class="passLabel" id="passLabel">
                    <input id="password" class="input-field" name="password" type="password" autofocus placeholder="Wachtwoord"/>
                </label>
            </div>
            <div>
                <label>Wachtwoordcontrole *</label>
                <label class="passLabel" id="passLabelconfirm">
                    <input id="password-confirm" class="input-field" name="password-confirm" type="password" autofocus placeholder="Herhaal wachtwoord" />
                </label>
            </div>
        </section>
        <button class="btn btn-text">
            Volgende &gt;
        </button>
    </form>

    <div id="user-actions">
        <#if client?? && client.baseUrl?has_content>
            <a href="${client.baseUrl}">Terug naar de website</a>
        </#if>
        <br>
        <a href="https://wiki.scoutsengidsenvlaanderen.be/handleidingen:groepsadmin:scoutsengidenvlaanderen_login" target="_blank">Help</a>
    </div>

 </#if>
</@layout.mainLayout>
