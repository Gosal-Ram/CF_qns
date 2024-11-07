
    <cffunction  name="lastFiveDays" access="public" returnType="any">
        <cfset struct["day"]=[]>
            <cfloop from="1" to="5" index="i" >
                <cfset days = DateAdd("d",-i,Now())>
                <cfset arrayAppend(struct["day"],dateFormat(days,"dd-mm-yyyy"))>
            </cfloop>
        <cfreturn struct>
    </cffunction>

    
</cfcomponent>


<!---         
                            <cfloop from="1" to="5" index="i" >
                <cfset local.days = DateAdd("d",-i,Now())>
                <cfset arrayAppend(struct["day"],dateFormat(local.days,"dd-mm-yyyy"))>
            </cfloop>      --->