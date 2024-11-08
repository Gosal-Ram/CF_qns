<cfcomponent>
    <cffunction  name="today" access="public" returnType="date">
        <cfset local.dateToday = dateFormat(now(),'mm/dd/yyyy')>
        <cfreturn local.dateToday>
    </cffunction>

    <cffunction  name="thisMonth" access="public" returnType="date">
        <cfset local.month = dateFormat(now(),'m')>
        <cfreturn local.month>
    </cffunction>

    <cffunction  name="thisMonthWord" access="public" returnType="date">
        <cfset local.monthInWord = dateFormat(now(),'mmmm')>
        <cfreturn local.monthInWord>
    </cffunction>

    <cffunction  name="lastFriday" access="public" returnType="date">
        <cfset local.today = dayofweek(now())>
        <cfset local.lastFri = "">
        <cfif local.today eq 7>
            <cfset local.lastFri = dateformat(dateAdd("d",-1,now()))>
                <cfelse>
                    <cfset local.lastFri = dateformat(dateAdd ("d",-(1+local.today),now()))>
        </cfif>
        <cfreturn local.lastFri>
    </cffunction>

    <cffunction  name="lastDayOfMonth" access="public" returnType="date">
        <cfset local.diff = daysInMonth(dateFormat( Now(), "mm"))-day(Now())>
        <cfset local.lastDayInNumber = DateAdd("d", local.diff-1, dateFormat(Now()))>
        <cfset local.lastDay = dateFormat(local.lastDayInNumber, "dd-mm-yyyy")>
        <cfreturn local.lastDay>
    </cffunction>

    <cffunction  name="lastFiveDays" access="public" returnType="struct">
        <cfset struct["day"]=[]>
            <cfset struct["day"]=[]>
                <cfloop from="1" to="5" index="i" >
                    <cfset arrayAppend(struct["day"],DateAdd("d",-i,Now()))>
                </cfloop>
        <cfreturn struct>
    </cffunction>

    
</cfcomponent>




