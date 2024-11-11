<cfcomponent>
    <cffunction name = "showQuery" access = "public" returnType = "query">
        <cfset local.data = queryNew("ID,NAME,EMAIL" , "integer,varchar,varchar")>
        <cfset queryAddRow(local.data)>
        <cfset querySetCell(local.data, "ID", "1")>
        <cfset querySetCell(local.data, "NAME", "Adam")>
        <cfset querySetCell(local.data, "EMAIL", "sample123@gmail.com")>

        <cfset queryAddRow(local.data)>
        <cfset querySetCell(local.data, "ID", "2")>
        <cfset querySetCell(local.data, "NAME", "Ross")>
        <cfset querySetCell(local.data, "EMAIL", "sample123@gmail.com")>

        <cfset queryAddRow(local.data)>
        <cfset querySetCell(local.data, "ID", "3")>
        <cfset querySetCell(local.data, "NAME", "James")>
        <cfset querySetCell(local.data, "EMAIL", "sample123@gmail.com")>
        <cfreturn local.data>
    </cffunction>
</cfcomponent>