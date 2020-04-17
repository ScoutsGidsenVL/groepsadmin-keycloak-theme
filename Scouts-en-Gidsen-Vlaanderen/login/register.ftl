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
            <h2>Contactinfo</h2>
            <div>
                <label>E-mailadres *</label>
                <input id="email" class="input-field" name="email" type="text" autofocus placeholder="E-mailadres"   value="${(register.formData.email!'')}"/>
            </div>
            <div>
                <label>Gsm-nummer</label>
                <input id="gsm" class="input-field input-phone" name="gsm" type="text" autofocus placeholder="Gsm-nummer" value="${(register.formData.gsm!'')}"/>
            </div>
        </section>
        <#if recaptchaRequired??>
            <script src='https://www.google.com/recaptcha/api.js'></script>
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
        <a href="https://wiki.scoutsengidsenvlaanderen.be/handleidingen:groepsadmin:scoutsengidenvlaanderen_login" target="_blank">Help</a>
        <#if client?? && client.baseUrl?has_content>
            <br>
            <a href="${client.baseUrl}">Terug naar de website</a>
        </#if>
    </div>

    <script>
      var cleave = new Cleave('.input-phone', {
          phone: true,
          phoneRegionCode: 'be'
      });
    </script>

 </#if>
</@layout.mainLayout>
