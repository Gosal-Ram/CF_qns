<cfcomponent>
    <cffunction  name="verifyEmail" access="remote" returnType="any">
        <cfargument name = "mailId" type="string" required="true">
        <cfquery datasource="database_gosal" name = "checkMailIdQuery">
            SELECT mailId FROM cf24 WHERE mailId='#arguments.mailId#';
        </cfquery>

        <cfif checkMailIdQuery.mailId EQ arguments.mailId>
            <cfreturn true>
        </cfif>
    </cffunction>

    <cffunction  name="insertQuery" returnType="string">
        <cfargument name = "firstName" type="string" required="true">
        <cfargument name = "mailId" type="string" required="true">
        <cfquery datasource="database_gosal" name="insertValueQuery">
            insert into cf24 values('#arguments.firstName#','#arguments.mailId#');
        </cfquery>
        <cfreturn "Email Address successfully subscribed our newsletter">
    </cffunction>
</cfcomponent>