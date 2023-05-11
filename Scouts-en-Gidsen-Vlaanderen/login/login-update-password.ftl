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
            <!-- Snippet to disable browser autofill https://stackoverflow.com/a/23234498 -->
            <input type="text" readonly value="this is not a login form" style="display: none;">
            <input type="password" readonly value="this is not a login form" style="display: none;">

            <input class="input-field" id="password" class="input-field" name="password-new" type="password" autofocus placeholder="Wachtwoord"/>
            <input class="input-field" id="password-confirm" class="input-field" name="password-confirm" type="password" autofocus placeholder="Herhaal wachtwoord" />

            <button class="btn">Wachtwoord aanpassen</button>
        </form>
    </#if>
</@layout.mainLayout>
