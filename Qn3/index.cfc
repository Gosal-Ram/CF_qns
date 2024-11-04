<cfcomponent>
    <cffunction  name="showDivisibleBy3" access="public" returnType="String">
        <cfargument  name="content" type="String" required="true">
        <cfset local.value=arguments.content>
        <cfset local.resultList="">
        <cfloop list="#local.value#" item="i">
            <cfif i mod 3 NEQ 0>
                <cfcontinue>
                <cfelse>
                    <cfset #resultList#= listAppend(#resultList#, i)>
            </cfif>
        </cfloop>
        <cfreturn #resultList#>
    </cffunction>
</cfcomponent>
