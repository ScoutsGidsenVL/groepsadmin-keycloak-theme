<#--  include head  -->
<#import  "mastertemplate.ftl" as layout>
<#--  include Content  -->
<@layout.mainLayout ;section>
<#if section = "content">
    <h2>Persoonlijke identificatie</h2>
    <#if message?has_content>
        <div class="alert alert-${message.type}">
            <span class="kc-feedback-text">${message.summary?no_esc}</span>
        </div>
    </#if>
    <form id="kc-form-login" class="${properties.kcFormClass!}" action="${url.registrationAction}" method="post">
        <input id="firstname" name="firstname" class="input-field" type="text" autofocus placeholder="Voornaam" value="${(formData.firstname[0])!''}"/>
        <input id="lastname" name="lastname" class="input-field" type="text" autofocus placeholder="Achternaam" value="${(formData.lastname[0])!''}" />
        <input id="lidnummer" name="lidnummer" class="input-field" type="text" autofocus placeholder="Lidnummer" value="${(formData.lidnummer[0])!''}" maxlength="13"/>
        <div class="input-subtext">
            <span class="help-link" tabindex="0">Waar vind ik het lidnummer?</span>
        </div>
        <button class="btn">Volgende</button>
    </form>

    <div class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <p>Je kan jouw lidnummer van 13 cijfers terugvinden op je <b>lidkaart</b> of op het <b>etiket</b> van een Krak?, Boem! of Over&Weer.<br>Of vraag het aan de <b>VGA</b> van je groep.</p>
            <br>
            <p>Iedereen die lid is van &eacute;&eacute;n van onze groepen krijgt een lidnummer.<br>Ben je nog niet aangesloten? <a href="https://www.scoutsengidsenvlaanderen.be/groepenzoeker">Zoek een groep</a> en wordt lid!</p>
        </div>
    </div>

    <div class="user-actions">
        <#if client??>
            <span>Heb je al een account? <a class="btn btn-secondary" href="${url.loginUrl}">Inloggen</a></span>
        </#if>
    </div>

 </#if>
</@layout.mainLayout>
