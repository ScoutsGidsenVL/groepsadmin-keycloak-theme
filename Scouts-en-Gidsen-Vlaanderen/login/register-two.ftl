<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
<#if section = "content">
    <h2>Account</h2>
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
        <input class="input-field" id="username" name="username" type="text" autofocus placeholder="Gebruikersnaam" value="${(formData.username[0])!''}" />
        <input class="input-field" id="password" name="password" type="password" autofocus placeholder="Wachtwoord"/>
        <input class="input-field" id="password-confirm" name="password-confirm" type="password" autofocus placeholder="Herhaal wachtwoord" />
        <button class="btn">Volgende</button>
    </form>

 </#if>
</@layout.mainLayout>
