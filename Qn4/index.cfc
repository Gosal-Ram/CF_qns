<cfcomponent>
    <cffunction  name="today" access="public" returnType="String">
        <cfset #dateToday# = dateFormat(now(),'mm/dd/yyyy')>
        <cfreturn dateToday>
    </cffunction>
    <cffunction  name="thisMonth" access="public" returnType="String">
        <cfset #month# = dateFormat(now(),'m')>
        <cfreturn month>
    </cffunction>

    <cffunction  name="thisMonthWord" access="public" returnType="String">
        <cfset #monthWord# = dateFormat(now(),'mmmm')>
        <cfreturn monthWord>
    </cffunction>

    <cffunction  name="lastFriday" access="public" returnType="String">
        <cfset today=dayofweek(now())>
        <cfif today eq 7>
            <cfreturn dateformat(dateAdd("d",-1,now()))>
                <cfelse>
                    <cfreturn dateformat(dateAdd ("d",-(1+today),now()))>
        </cfif>
    </cffunction>

    <cffunction  name="lastDayOfMonth" access="public" returnType="String">
        <cfset diff=daysInMonth(dateFormat(Now(),"mm"))-day(Now())>
        <cfset struct["lastDay"]=DateAdd("d",diff,dateFormat(Now()))>
         <cfset struct["day"]=[]>
            <cfloop from="1" to="5" index="i" >
                <cfset arrayAppend(struct["day"],DateAdd("d",-i,Now()))>
            </cfloop>
        <cfreturn struct>
    </cffunction>

    
</cfcomponent>