<cfcomponent>
    <cffunction  name="signUp" returnType="string">
        <cfargument  name="userName" type="string" required="true">
        <cfargument  name="pwd1" type="string" required="true">
        <cfargument  name="pwd2" type="string" required="true">
        <cfargument  name="role" type="string" required="true">

        <cfset local.encryptedPass = Hash(#arguments.pwd1#, 'SHA-512')/>
        <cfset local.result = "">
        <cfquery name="queryUserCheck" datasource="database_gosal">
            SELECT COUNT(userName) AS count
            FROM cf28user 
            WHERE userName = <cfqueryparam value = "#arguments.userName#" cfsqltype="CF_SQL_VARCHAR">
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
            SELECT userName,pwd,role 
            FROM cf28user 
            WHERE userName = <cfqueryparam value = "#arguments.userName#" cfsqltype="CF_SQL_VARCHAR">
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

    <cffunction  name="fetchPage" returnType="query">
        <cfquery name="queryFetchPage" datasource="database_gosal">
            SELECT page_id,page_name,page_description 
            FROM cf28pages
        </cfquery>
        <cfreturn queryFetchPage>
    </cffunction>

    <cffunction  name="deletePage" retunType="boolean" access="remote">
        <cfargument  name="pageId" type="integer" required ="true">
        <cfquery name= "queryDeletePage">
            DELETE FROM cf28pages WHERE page_id = <cfqueryparam value = "#arguments.pageId#" cfsqltype="CF_SQL_INTEGER">
        </cfquery>
        <cfreturn true>
    </cffunction>

    <cffunction  name="addPage" retunType="string" access="public">
        <cfargument  name="pageName" type="string" required ="true">
        <cfargument  name="pageDesc" type="string" required = "true">
        <cfset local.result = "">     
        <cfquery name="queryCheckPage"  datasource="database_gosal">
            SELECT page_name 
            FROM cf28pages 
            WHERE page_name = <cfqueryparam value = "#arguments.pageName#" cfsqltype="CF_SQL_VARCHAR">
        </cfquery>
        <cfif queryCheckPage.RecordCount EQ 0>
            <cfquery name="queryInsertPage"  datasource="database_gosal">
                INSERT INTO cf28pages(page_name,page_description) 
                    VALUES (<cfqueryparam value = "#arguments.pageName#" cfsqltype="CF_SQL_VARCHAR">,
                            <cfqueryparam value = "#arguments.pageDesc#" cfsqltype="CF_SQL_VARCHAR">)
            </cfquery>
            <cfset local.result = "page created successfully">
            <cfelse>
                <cfset local.result = "page name already exists">
        </cfif>
        <cfreturn local.result>
    </cffunction>

    <cffunction  name="goToEditPage" returnType="string" access="remote">
        <cfargument  name="pageId" type="any" required ="true">
        <cfquery name="queryFetchPageForEdit" datasource="database_gosal" >
            SELECT page_id,page_name,page_description 
            FROM cf28pages 
            WHERE page_id = <cfqueryparam value = "#arguments.pageId#" cfsqltype="CF_SQL_INTEGER">
        </cfquery>
        <cfset session.editPgId = queryFetchPageForEdit.page_id>
        <cfset session.editPgName = queryFetchPageForEdit.page_name>
        <cfset session.editPgDesc= queryFetchPageForEdit.page_description>
<!---         <cflocation  url = "../editPage.cfm"> --->
    </cffunction>

    <cffunction  name="editPage" returnType="string" access="remote">
        <cfargument  name="pageId" type="numeric" required ="true">
        <cfargument  name="pageDesc" type="string" required ="true">
        <cfset local.result = "">     
        <cfquery name="queryUpdatePage" datasource="database_gosal">
            UPDATE cf28pages 
            SET page_description = <cfqueryparam value = "#arguments.pageDesc#" cfsqltype="CF_SQL_VARCHAR">  
            WHERE page_id = <cfqueryparam value = "#arguments.pageId#" cfsqltype="CF_SQL_INTEGER">
        </cfquery>
        <cfset session.editPgDesc = arguments.pageDesc>
        <cfset local.result = "page update successfully">
        <cfreturn local.result>
    </cffunction>
    
    <cffunction  name="logOut" access="remote">
       <cfset structDelete(session,"userDetails")> 
<!---         <cfset structClear(userDetails)> --->
    </cffunction>


</cfcomponent>
