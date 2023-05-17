<#import "mastertemplate.ftl" as layout>
	<@layout.mainLayout ;section>
    <#if section = "content">
    	<#if message?has_content>
				<div class="alert alert-${message.type}">
					<span class="kc-feedback-text">${message.summary?no_esc}</span>
				</div>
			</#if>
        <form id="kc-passwd-update-form" class="${properties.kcFormClass!}" action="${url.loginAction}" method="post">
            <!-- Snippet to disable browser autofill https://stackoverflow.com/a/23234498 -->
            <input type="text" readonly value="this is not a login form" style="display: none;">
            <input type="password" readonly value="this is not a login form" style="display: none;">

            <div class="input-group">
                <input class="input-field" id="password" class="input-field" name="password-new" type="password" autofocus placeholder="Wachtwoord"/>
                <button class="password-toggle" type="button" title="Toon wachtwoord"></button>
            </div>
            <div class="input-group">
                <input class="input-field" id="password-confirm" class="input-field" name="password-confirm" type="password" autofocus placeholder="Herhaal wachtwoord" />
                <button class="password-toggle" type="button" title="Toon wachtwoord"></button>
            </div>

            <button class="btn">Wachtwoord aanpassen</button>
        </form>
    </#if>
</@layout.mainLayout>
