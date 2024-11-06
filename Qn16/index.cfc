<cfcomponent>
    <cffunction  name="showUserAge" access="public" returnType="any">
        <cfargument name="userDob" type="any" required="true">
        <cfset userAge = dateDiff('yyyy',arguments.userDob,now())>
        <cfreturn userAge>
    </cffunction>
</cfcomponent>


