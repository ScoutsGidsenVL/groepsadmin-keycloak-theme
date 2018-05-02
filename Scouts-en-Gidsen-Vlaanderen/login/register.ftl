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
            <h2>Contact info</h2>
            <div>
                <label>E-mailadres*</label>
                <input id="email" class="input-field" name="email" type="text" autofocus placeholder="e-mail"   value="${(register.formData.email!'')?html}"/>
            </div>
             <div>
                <label>GSM nummer</label>
                <input id="gsm" class="input-field input-phone" name="gsm" type="text" autofocus placeholder="gsm nummer"   value="${(register.formData.gsm!'')?html}"/>
            </div>
        </section>
          <#if recaptchaRequired??>
            <div id="capatcha" class="form-group">
                <div class="${properties.kcInputWrapperClass!}">
                    <div class="g-recaptcha"  data-sitekey="${recaptchaSiteKey}"></div>
                </div>
            </div>
            </#if>
        <button class="btn btn-text">
            Account aanmaken
        </button>
    </form>

    <div id="user-actions">
        <a href="${url.loginUrl}">Terug</a></span>
        <a href="https://wiki.scoutsengidsenvlaanderen.be/doku.php?id=handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
    </div>

 </#if>
</@layout.mainLayout>