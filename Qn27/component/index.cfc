<cfcomponent>
    <cffunction name="isLoggedIn" access="public" returntype="boolean">
        <cfargument  name="name">
        <cfargument  name="pwd">
        <cfif structKeyExists(session, "isAuthenticated") and session.isAuthenticated EQ true>
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>

    <cffunction name="validateUser" access="public" returntype="boolean">
        <cfargument name="name">
        <cfargument name="pwd">
        <cfif arguments.name != " " and arguments.pwd !=" ">
            <cfreturn true>
        <cfelse>
            <cfreturn false>
        </cfif>
    </cffunction>

    <cffunction name="authenticateUser" access="public" returntype="void">
        <cfargument name="name">
        <cfargument name="pwd">
        <cfif validateUser(arguments.name, arguments.pwd)>
            <cfset session.isAuthenticated = true>
        <cfelse>
            <cfset session.isAuthenticated = false>
        </cfif>
    </cffunction>
    
    <cffunction  name="logOut" access="remote" returntype="void">
        <cfset session.isAuthenticated = false>
        <cflocation url="index.cfm" addToken="no">
    </cffunction>
</cfcomponent>