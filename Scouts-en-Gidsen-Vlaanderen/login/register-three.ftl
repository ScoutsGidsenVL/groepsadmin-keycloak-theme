<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
<#if section = "content">
    <h2>Contactinfo</h2>
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
        <div class="input-group">
        <input class="input-field" id="email" name="email" type="text" autofocus placeholder="E-mailadres" value="${(formData.email[0])!''}"/>
        <input class="input-field input-phone" id="gsm" name="gsm" type="text" autofocus placeholder="Gsm-nummer" value="${(formData.gsm[0])!''}"/>
        <#if recaptchaRequired??>
            <script src='https://www.google.com/recaptcha/api.js'></script>
            <div id="capatcha">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="g-recaptcha" data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </div>
        </#if>
        <button class="btn">Account aanmaken</button>
    </form>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const cleave = new Cleave('.input-phone', {
                phone: true,
                phoneRegionCode: 'be'
            });
        });
    </script>

 </#if>
</@layout.mainLayout>
