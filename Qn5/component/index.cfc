<cfcomponent>
    <cffunction name="showUserAge" access="public" returnType="date">
        <cfargument name = "userDob" type="date" required="true">

        <cfset variables.userAge = dateDiff('yyyy',arguments.userDob,now())>
        <cfreturn variables.userAge>
    </cffunction>
 

    <cffunction name="showMomAge" access="public" returnType="date">
        <cfargument name = "momDob" type="date" required="true">

        <cfset local.momAge = dateDiff('yyyy',arguments.momDob,now())>
        <cfset local.momAgeBirth = local.momAge-variables.userAge>
        <cfreturn local.momAgeBirth>
    </cffunction>
 

    <cffunction name="daysForMomBday" access="public" returnType="date">
        <cfargument name="momDob" type="date" required="true">

        <cfset local.thisYearMomBday = arguments.momDob.setYear(year(now()))>
        <cfset local.momAge3 = dayOfYear(local.thisYearMomBday)-dayOfYear(now())>
        <cfif local.momAge3 LT 0>
            <cfset local.daysForMomBdayResult = local.momAge3+365>
            <cfelse>
                <cfset local.daysForMomBdayResult = local.momAge3>  
        </cfif>     
        <cfreturn local.daysForMomBdayResult>
    </cffunction>
 
 
    <cffunction name="daysForUserBday" access="public" returnType="date">
        <cfargument name="userDob" type="date" required="true">

        <cfset local.thisYearUserBday = arguments.userDob.setYear(year(now()))>
        <cfset local.userAge3 = dayOfYear(local.thisYearUserBday)-dayOfYear(now())>
        <cfif local.userAge3 LT 0>
            <cfset local.daysForUserBdayResult = local.userAge3+365>
            <cfelse >
                <cfset local.daysForUserBdayResult = local.userAge3>  
        </cfif>
        <cfreturn local.daysForUserBdayResult>
    </cffunction>
</cfcomponent>


