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
				<label>Voornaam</label>
				<input id="firstname" class="input-field" name="firstname" type="text" autofocus placeholder="Voornaam" />
			</div>
			<div>
				<label>Achternaam</label>
				<input id="lastmame" class="input-field" name="lastname" type="text" autofocus placeholder="Achternaam" />
			</div>
			<div>
			<label>email</label>
				<input id="email" class="input-field" name="email" type="text" autofocus placeholder="GSM / e-mail" />
			</div>
			<button class="btn btn-text">
				Nieuw wachtwoord aanvragen
			</button>
		</form>

		<div id="user-actions">
			<a href="#">Gebruikersnaam vergeten?</a></span>
			<a href="${url.loginUrl}">Terug</a></span>
			<a href="https://wiki.scoutsengidsenvlaanderen.be/doku.php?id=handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
		</div>
