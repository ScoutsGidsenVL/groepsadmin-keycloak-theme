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
            <h2>Persoonlijke identitficatie</h2>

            <div>
                <label>Voornaam *</label>
                <input id="firstname" class="input-field" name="firstname" type="text" autofocus placeholder="Voornaam" value="${(formData.firstname?join("")!'')}"/>
            </div>
            <div>
                <label>Achternaam *</label>
                <input id="lastname" class="input-field" name="lastname" type="text" autofocus placeholder="Achternaam" value="${(formData.lastname?join("")!'')}" />
            </div>
            <div>
                <div class="helpContainer">
                    <label class="helpLabel">Lidnummer *<a class="helpLink" href="#" tabindex="-1">?</a></label>
                </div>
                <input id="lidnummer" class="input-field" name="lidnummer" type="text" autofocus placeholder="Lidnummer" value="${(formData.lidnummer?join("")!'')}" maxlength="13"/>
            </div>

        </section>
        <button class="btn btn-text">
           Volgende &gt;
        </button>
    </form>

    <!-- The Modal -->
    <div id="myModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <p>Je kan jouw lidnummer van 13 cijfers terugvinden op je <b>lidkaart</b> of op het <b>etiket</b> van een Krak?, Boem! of Over&Weer.<br>Of vraag het aan de <b>VGA</b> van je groep.</p>
            <br>
            <p>Iedereen die lid is van &eacute;&eacute;n van onze groepen krijgt een lidnummer.<br>Ben je nog niet aangesloten? <a href="https://www.scoutsengidsenvlaanderen.be/groepen-zoeker">Zoek een groep</a> en wordt lid!</p>
        </div>
    </div>

    <div id="user-actions">
        <a href="https://wiki.scoutsengidsenvlaanderen.be/handleidingen:groepsadmin:scoutsengidenvlaanderen_login" target="_blank">Help</a>
        <#if client??>
            <a href="${url.loginUrl}">Inloggen</a>
        </#if>
        <#if client?? && client.baseUrl?has_content>
            <br>
            <a href="${client.baseUrl}">Terug naar de website</a>
        </#if>
    </div>

 </#if>
</@layout.mainLayout>
