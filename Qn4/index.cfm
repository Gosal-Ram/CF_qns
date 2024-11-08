<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>
    <cfoutput>
        <div class="d-flex flex-column justify-content-center align-items-center mt-4">
            <h2 class="display-6">Date details</h2>
            <cfset local.value = createObject("component","component.index")>
            <cfset local.result = local.value.today()>
            <span class="text-success mt-4"> 
                Today's date : #local.result#
            </span> 
            <cfset local.result2 = local.value.thisMonth()>
            <span class="text-success mt-4"> 
                Month in numeric : #local.result2#
            </span> 
            <cfset local.result3 = local.value.lastFriday()>
            <span class="text-success mt-4"> 
                Last friday  : #local.result3#
            </span> 
            
            <cfset local.result4 = local.value.lastDayOfMonth()>
            <span class="text-success mt-4"> 
                Last Day of Month  :  #local.result4#
            </span> 
         
            <cfset local.result5 = local.value.lastFiveDays()>
            <span class="text-success my-4"> 
                Last five days  : 
            </span> 
            <cfloop from="1" to="5" index="i" >
                <cfif dayOfWeek(local.result5.day[i])==1>
                    <p style="color:red">#dateFormat(local.result5.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(local.result5.day[i])==2>
                        <p style="color:green">#dateFormat(local.result5.day[i],"dd-mm-yy-dddd")#</p>
                        <cfelseif dayOfWeek(local.result5.day[i])==3>
                        <p style="color:orange">#dateFormat(local.result5.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(local.result5.day[i])==4>
                        <p style="color:gold">#dateFormat(local.result5.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(local.result5.day[i])==5>
                        <p style="color:gray">#dateFormat(local.result5.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(local.result5.day[i])==6>
                        <p style="color:blue">#dateFormat(local.result5.day[i],"dd-mm-yy-dddd")#</p>
                    <cfelseif dayOfWeek(local.result5.day[i])==7>
                        <p style="color:black">#dateFormat(local.result5.day[i],"dd-mm-yy-dddd")#</p>
                </cfif>
            </cfloop> 
        <div>
    </cfoutput>
</body>
</html>

