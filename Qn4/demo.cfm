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

    <cffunction  name="lastDayOfMonth" access="public" returnType="any">
        <cfset diff=daysInMonth(dateFormat(Now(),"mm"))-day(Now())>
        <cfset last_day = DateAdd("d",diff-1,dateFormat(Now()))>
        <cfset struct["lastDay"]=dateFormat(last_day,"dd-mm-yyyy")>
        <cfreturn struct>
    </cffunction>

    <cffunction  name="lastFiveDays" access="public" returnType="any">
        <cfset struct["day"]=[]>
            <cfloop from="1" to="5" index="i" >
                <cfset days = DateAdd("d",-i,Now())>
                <cfset arrayAppend(struct["day"],dateFormat(days,"dd-mm-yyyy"))>
            </cfloop>
        <cfreturn struct>
    </cffunction>

    
</cfcomponent>







<cfoutput>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>
    <div class="d-flex flex-column justify-content-center align-items-center mt-4">
        <h2 class="display-6">Date details</h2>
        <cfset local.value=createObject("component","index")>
        <cfset local.result=local.value.today()>
        <span class="text-success mt-4"> 
           Today's date : #local.result#
        </span> 
        <cfset local.result2=local.value.thisMonth()>
        <span class="text-success mt-4"> 
           Month in numeric : #local.result2#
        </span> 
        
        <cfset local.result4=local.value.lastFriday()>
        <span class="text-success mt-4"> 
           Last friday  : #local.result4#
        </span> 
        
        <cfset local.result5=local.value.lastDayOfMonth()>
        <span class="text-success mt-4"> 
           Last Day of Month  :  #local.result5["lastDay"]#
        </span> 
        
        <cfset local.result6=local.value.lastFiveDays()>
        <span class="text-success mt-4"> 
<!---            Last five days  :  #result.lastDay# --->
<!---            <cfdump  var="#local.result6["day"]#"> --->
         <cfloop from="1" to="5" index="i" >
                    <cfif dayOfWeek(result.day[i])==1>
                        <p style="color:red">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==2>
                        <p style="color:green">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==3>
                        <p style="color:orange">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==4>
                        <p style="color:yellow">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==5>
                        <p style="color:gray">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==6>
                        <p style="color:blue">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(result.day[i])==7>
                        <p style="color:black">#dateFormat(result.day[i],"dd-mm-yy-dddd")#</p>
                    </cfif>
                </cfloop>
        </span>
         
    <div>
</body>
</html>
</cfoutput>

