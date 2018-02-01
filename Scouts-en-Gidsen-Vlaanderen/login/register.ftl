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
            <h2>Persoonlijke identitficatie</h2>
            <div>
                <label>Voornaam</label>
                <input id="firstname" class="input-field" name="username" type="text" autofocus placeholder="Voornaam" />
            </div>
            <div>
                <label>Achternaam</label>
                <input id="lastname" class="input-field" name="Lastname" type="text" autofocus placeholder="Achternaam" />
            </div>
            <div>
                <label>Lidnummer</label>
                <input id="user-id" class="input-field" name="phone-email" type="text" autofocus placeholder="Lidnummer" />
                <p></p>
            </div>
        </section>
        <section class="regist-sub-section">
            <h2>Account</h2>
            <div>
                <label>E-mailadres</label>
                <input id="email" class="input-field" name="phone-email" type="text" autofocus placeholder="e-mail" />
            </div>
            <div>
                <label>Gebruikersnaam</label>
                <input id="username" class="input-field" name="phone-email" type="text" autofocus placeholder="Gebruikersnaam" />
            </div>
            <div>
                <label>wachtwoord</label>
                <input id="password" class="input-field" name="password" type="password" autofocus placeholder="Wachtwoord" />
            </div>
            <div>
                <label>wachtwoordcontrole</label>
                <input id="password-confirm" class="input-field" name="password-confirm" type="password" autofocus placeholder="Herhaal wachtwoord" />
            </div>
        </section>
        <button class="btn btn-text">
            Account aanmaken
        </button>
    </form>

    <div id="user-actions">
        <a href="${url.loginUrl}">Gebruikersnaam vergeten?</a></span>
        <a href="${url.loginUrl}">Terug</a></span>
        <a href="https://wiki.scoutsengidsenvlaanderen.be/doku.php?id=handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
    </div>

 </#if>
</@layout.mainLayout>