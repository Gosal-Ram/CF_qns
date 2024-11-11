<cfcomponent>
    <cffunction  name="verifyEmail" access="remote" returnType="any">
        <cfargument name = "mailId" type="string" required="true">
        <cfquery datasource="database_gosal" name="query">
            select count('mailId') as count from cf24 where mailId='#arguments.mailId#';
        </cfquery>

        <cfif query.count>
            <cfreturn true>
        </cfif>
    </cffunction>

    <cffunction  name="checkData">
        <cfargument name = "firstName" type="string" required="true">
        <cfargument name = "mailId" type="string" required="true">
        <cfquery datasource="database_gosal" name="query">
            insert into cf24 values('#arguments.firstName#','#arguments.mailId#');
        </cfquery>
    </cffunction>
</cfcomponent>