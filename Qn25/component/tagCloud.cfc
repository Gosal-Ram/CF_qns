<cfcomponent>
    <cffunction  name="construcFn" access="remote" returnType="struct">
        <cfargument name = "mailId" type="string" required="true">
        <cfquery datasource="database_gosal" name = "checkMailIdQuery">
            SELECT mailId FROM cf24 WHERE mailId='#arguments.mailId#';
        </cfquery>

        <cfif checkMailIdQuery.mailId EQ arguments.mailId>
            <cfreturn true>
        </cfif>
    </cffunction>

</cfcomponent>