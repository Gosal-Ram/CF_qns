<cfcomponent>
    <cffunction  name="showStructure" access="public" returnType="struct">
        <cfargument name="key" type="any" required="true">
        <cfargument name="value" type="any" required="true">

        <cfset structDemo =structNew()>
        <cfset structDemo[arguments.key]=arguments.value>
        <cfreturn structDemo>
    </cffunction>
</cfcomponent>