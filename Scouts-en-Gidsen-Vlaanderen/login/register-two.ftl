<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
<#if section = "content">
    <h2>Registratie - stap 2/3</h2>
    <#if message?has_content>
        <div class="alert alert-${message.type}">
            <span class="kc-feedback-text">${message.summary?no_esc}</span>
        </div>
    </#if>

    <h3>Account</h3>
    <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
        <input class="input-field" id="username" name="username" type="text" autofocus placeholder="Gebruikersnaam" value="${(formData.username[0])!''}" />
        <div class="input-group">
            <input class="input-field" id="password" name="password" type="password" autofocus placeholder="Wachtwoord"/>
            <button class="password-toggle" type="button" title="Toon wachtwoord"></button>
        </div>
        <div class="input-group">
            <input class="input-field" id="password-confirm" name="password-confirm" type="password" autofocus placeholder="Herhaal wachtwoord" />
            <button class="password-toggle" type="button" title="Toon wachtwoord"></button>
        </div>
        <button class="btn">Volgende</button>
    </form>

 </#if>
</@layout.mainLayout>
