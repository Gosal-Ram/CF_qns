<cfcomponent>
    <cffunction  name = "insertDetails">
        <cfargument  name = "position">
        <cfargument  name = "locate">
        <cfargument  name = "start">
        <cfargument  name = "email">
        <cfargument  name = "phone">
        <cfargument  name = "firstName">
        <cfargument  name = "lastName">
        <cfquery name = "query" datasource = "database_gosal"> 
            INSERT INTO cf23 (Firstname,Lastname,Phone,Email,Position,Relocate,Joining)
             VALUES(<cfqueryparam value='#arguments.firstName#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.lastName#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.phone#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.email#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.position#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.locate#' cfsqltype="cf_sql_varchar">,
                    <cfqueryparam value='#arguments.start#' cfsqltype="cf_sql_date">
                    )
        </cfquery>
        <cfreturn "Successfully added Record"> 
    </cffunction>
</cfcomponent>