<cfcomponent>
    <cffunction  name="showStruct" access="public" returnType="any">
        <cfargument name="key" type="any" required="true">
        <cfargument name="value" type="any" required="true">
        <cfset local.key = arguments.key>
        <cfset local.value = arguments.value>
        <cfset local.result = "">
        <cfif len(trim(local.key)) AND len(trim(local.value))>
            <cfif structKeyExists(session, "result")>
                <cfloop collection="#session.result#" item="item">
                    <cfif item EQ local.key>
                        <cfset local.result = "#local.key# already present .Cannot add again">
                        <cfreturn local.result>
                        <cfelse>
                            <cfset session.result[local.key]=local.value>
                    </cfif>
                </cfloop>
                <cfelse>
                    <cfset session.result = {}>
                    <cfset session.result[local.key]=local.value>
            </cfif>
            <cfelse>
                <cfset local.result = "Input the values">
                <cfreturn local.result>
        </cfif>
        <cfreturn session.result>
    </cffunction>
</cfcomponent>
