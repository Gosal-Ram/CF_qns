<cfcomponent>
    <cffunction  name="signUp" returnType="string">
        <cfargument  name="userName" type="string" required="true">
        <cfargument  name="pwd1" type="string" required="true">
        <cfargument  name="pwd2" type="string" required="true">
        <cfargument  name="role" type="string" required="true">

        <cfset local.encryptedPass = Hash(#arguments.pwd1#, 'SHA-512')/>
        <cfset local.result = "">
        <cfquery name="queryUserCheck" datasource="database_gosal">
            SELECT COUNT(userName) AS count FROM cf28user WHERE userName = <cfqueryparam value = "#arguments.userName#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif queryUSerCheck.count>
            <cfset local.result = "userName already exists">
            <cfelse>
                <cfquery name="queryInsert" datasource="database_gosal">
                    INSERT INTO cf28user(userName,role,pwd) 
                    VALUES (<cfqueryparam value = "#arguments.userName#" cfsqltype="CF_SQL_VARCHAR">,
                            <cfqueryparam value = "#arguments.role#" cfsqltype="CF_SQL_VARCHAR">,
                            <cfqueryparam value = "#local.encryptedPass#" cfsqltype="CF_SQL_VARCHAR">)
                </cfquery>
                <cfset local.result = "data added to the database">
        </cfif>
    <cfreturn local.result>
    </cffunction>
    
    <cffunction  name="logIn" returnType="string">
        <cfargument  name="userName" type="string" required ="true">
        <cfargument  name="pwd" type="string" required = "true">

        <cfset local.encryptedPassFromUser = Hash(#arguments.pwd#, 'SHA-512')/>
        <cfset local.result = "">        
        <cfquery name="queryUserLogin" datasource="database_gosal">
            SELECT userName,pwd,role FROM cf28user WHERE 
            userName = <cfqueryparam value = "#arguments.userName#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif queryUserLogin.userName == ''>
            <cfset local.result = "userName doesn't exist">
            <cfelseif  queryUserLogin.pwd NEQ local.encryptedPassFromUser >
                <cfset local.result = "Invalid password">
            <cfelse>
            <cfset session.userDetails["role"] = queryUserLogin.role>
            <cflocation  url="#queryUserLogin.role#.cfm" addToken="no">
        </cfif>
        <cfreturn local.result>
    </cffunction>
</cfcomponent>
