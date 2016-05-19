<#import "template.ftl" as layout>
<@layout.mainLayout active='social' bodyClass='social'; section>

    <div class="row">
        <div class="title">
            ${msg("federatedIdentitiesHtmlTitle")}
        </div>
    </div>

    <form action="${url.passwordUrl}" class="form-horizontal" method="post">
		<#if message?has_content>
			<div class="alert alert-${message.type}">
				<#if message.type=='success'><i class="fa fa-check" aria-hidden="true"></i></#if>
				<#if message.type=='error'><i class="fa fa-exclamation" aria-hidden="true"></i></#if>
				${message.summary}
			</div>
		</#if>
        <#list federatedIdentity.identities as identity>
            <div class="form-group">
                <div class="col-sm-2 col-md-2">
                    <label for="${identity.providerId!}" class="control-label">${identity.providerName!}</label>
                </div>
                <div class="col-sm-5 col-md-5">
                    <input disabled="true" class="form-control" value="${identity.userName!}">
                </div>
                <div class="col-sm-5 col-md-5">
                    <#if identity.connected>
                        <#if federatedIdentity.removeLinkPossible>
                            <a href="${identity.actionUrl}" type="submit" id="remove-${identity.providerId!}" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}">${msg("doRemove")}</a>
                        </#if>
                    <#else>
                        <a href="${identity.actionUrl}" type="submit" id="add-${identity.providerId!}" class=" btn ${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonLargeClass!}">${msg("doAdd")}</a>
                    </#if>
                </div>
            </div>
        </#list>
    </form>

</@layout.mainLayout>