<cfcomponent>
    <cffunction name = "showCount" access ="public" returnType = "numeric">
        <cfif NOT structKeyExists(cookie, "VisitsCounter")>
            <cfset cookie.VisitsCounter = 1> 
            <cfelse>
            <cfset cookie.VisitsCounter =  cookie.VisitsCounter + 1>
        </cfif>
        <cfreturn cookie.VisitsCounter>
    </cffunction>
</cfcomponent>