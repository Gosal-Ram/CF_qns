<cfcomponent>
    <cffunction  name="showDivisibleBy3" access="public" returnType="String">
        <cfargument name="content" type="String" required="true">
        <cfset local.value=arguments.content>
        <cfset local.resultList="">

        <cfloop list="#local.value#" item="i">
            <cfif i MOD 3 NEQ 0>
                <cfcontinue>
                <cfelse>
                    <cfset local.resultList= listAppend(local.resultList, i)>
            </cfif>
        </cfloop>
        <cfreturn "The numbers divisible by 3 are  "&local.resultList>
    </cffunction>
</cfcomponent>
