<cfcomponent>
    <cffunction  name="showUserAge" access="public" returnType="any">
        <cfargument name="userDob" type="any" required="true">
        <cfset userAge = dateDiff('yyyy',arguments.userDob,now())>
        <cfreturn userAge>
    </cffunction>
 
 
 
    <cffunction  name="showMomAge" access="public" returnType="any">
        <cfargument name="momDob" type="any" required="true">
        <cfset momAge2 = dateDiff('yyyy',arguments.momDob,now())>
        <cfset momAge = momAge2-userAge>
        <cfreturn momAge>
    </cffunction>
 
 
 
    <cffunction  name="daysForMomBday" access="public" returnType="any">
        <cfargument name="momDob" type="any" required="true">
        <cfset thisYearMomBday = momDob.setYear(year(now()))>
        <cfset momAge3 =dayOfYear(thisYearMomBday)-dayOfYear(now())>
        <cfif momAge3 LT 0>
            <cfset momAge = momAge3+365>
            <cfelse >
                <cfset momAge = momAge3>  
        </cfif>
        
        <cfreturn momAge>
    </cffunction>
 
 
 
    <cffunction  name="daysForUserBday" access="public" returnType="any">
        <cfargument name="userDob" type="any" required="true">
       <cfset thisYearUserBday = userDob.setYear(year(now()))>
        <cfset userAge3 =dayOfYear(thisYearUserBday)-dayOfYear(now())>
        <cfif userAge3 LT 0>
            <cfset userAge = userAge3+365>
            <cfelse >
                <cfset userAge = userAge3>  
        </cfif>
        <cfreturn userAge>
    </cffunction>

</cfcomponent>


