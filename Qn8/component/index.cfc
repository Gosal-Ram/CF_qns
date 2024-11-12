<cfcomponent>
    <cffunction  name="showStruct" access="public" returnType="struct">
        <cfargument name="key" type="any" required="true">
        <cfargument name="value" type="any" required="true">
        <cfset session..structName =structNew()>
        <cfset session.structName[arguments.key]=arguments.value>
        <cfreturn session.structName>
    </cffunction>
</cfcomponent>