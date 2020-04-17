<#import "mastertemplate.ftl" as layout>
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
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <input type="text" readonly value="this is not a login form" style="display: none;">
            <input type="password" readonly value="this is not a login form" style="display: none;">

            <div>
                <label>Wachtwoord *</label>
                <label class="passLabel" id="passLabel">
                    <input id="password" class="input-field" name="password-new" type="password" autofocus placeholder="Wachtwoord"/>
                </label>
            </div>

            <div>
                <label>Wachtwoordcontrole *</label>
                <label class="passLabel" id="passLabelconfirm">
                    <input id="password-confirm" class="input-field" name="password-confirm" type="password" autofocus placeholder="Herhaal wachtwoord" />
                </label>
            </div>

            <button class="btn btn-text">Wachtwoord aanpassen</button>
        </form>
    </#if>
</@layout.mainLayout>
