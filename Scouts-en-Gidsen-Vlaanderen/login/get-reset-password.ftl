<#if message?has_content>
    <div class="alert alert-${message.type}">
        <#if message.type='success'><span class="${properties.kcFeedbackSuccessIcon}"></span></#if>
        <#if message.type='warning'><span class="${properties.kcFeedbackWarningIcon}"></span></#if>
        <#if message.type='error'><span class="${properties.kcFeedbackErrorIcon}"></span></#if>
        <#if message.type='info'><span class="${properties.kcFeedbackInfoIcon}"></span></#if>
        <span class="kc-feedback-text">${message.summary}</span>
    </div>
</#if>
<form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
    <div>
        <label>Gebruikersnaam</label>
        <input id="username" class="input-field" name="username" type="text" autofocus placeholder="Uw gebruikersaam" />
    </div>
    <div>
        <label>GSM-nummer of e-mailadres</label>
        <input id="email" class="input-field" name="email" type="text" autofocus placeholder="GSM / e-mail" />
    </div>
    <button class="btn btn-text">
        Nieuw wachtwoord aanvragen
    </button>
</form>

<div id="user-actions">
    <a  id="showReaction" href="#">Gebruikersnaam vergeten?</a></span>
    <a href="${url.loginUrl}">Terug</a></span>
    <a href="https://wiki.scoutsengidsenvlaanderen.be/doku.php?id=handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
</div>