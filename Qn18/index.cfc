<cfcomponent>
    <cffunction  name="showData" returnType="query">
        <cfquery datasource = "database_gosal" name="query">
            SELECT * from cf12;
        </cfquery>
        <cfreturn query>
    </cffunction>
</cfcomponent>