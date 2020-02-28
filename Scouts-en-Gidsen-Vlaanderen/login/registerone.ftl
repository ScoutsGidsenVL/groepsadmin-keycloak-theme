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
                <label>Voornaam*</label>
                <input id="firstname" class="input-field" name="firstname" type="text" autofocus placeholder="Voornaam" value="${(formData.firstname?join("")!'')}"/>
            </div>
            <div>
                <label>Achternaam*</label>
                <input id="lastname" class="input-field" name="lastname" type="text" autofocus placeholder="Achternaam" value="${(formData.lastname?join("")!'')}" />
            </div>
            <div>
                <div class="helpContainer">
                    <label class="helpLabel">Lidnummer*<a class="helpLink" href="#">Daan</a></label>
                </div>
                <input id="lidnummer" class="input-field" name="lidnummer" type="text" autofocus placeholder="Lidnummer"  value="${(formData.lidnummer?join("")!'')}"/>
                <a target="_blank" href="https://www.scoutsengidsenvlaanderen.be/groepen-zoeker" class="extraInfo">Ben je niet aangesloten bij Scouts en Gidsen Vlaanderen? Zoek een groep en word lid.</a>
            </div>

        </section>
        <button class="btn btn-text">
           Volgende
        </button>
    </form>

    <!-- The Modal -->
    <div id="myModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span class="close">&times;</span>
            <p>Lidnummer help</p>
        </div>
    </div>

    <div id="user-actions">
        <a href="${url.loginUrl}">Terug</a>
        <a href="https://wiki.scoutsengidsenvlaanderen.be/doku.php?id=handleidingen:groepsadmin:wachtwoord_vergeten" target="_blank">Help</a>
    </div>

 </#if>
</@layout.mainLayout>
