<cfcomponent>
    <cffunction  name="showStruct" access="public" returnType="any">
        <cfargument name="key" type="any" required="true">
        <cfargument name="value" type="any" required="true">
        <cfset structName =structNew()>
        <cfset structName[key]=value>
        <cfreturn structName>
    </cffunction>
</cfcomponent>