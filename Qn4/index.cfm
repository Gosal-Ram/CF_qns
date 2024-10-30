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
           Last Day of Month  : #local.result5#
        </span> 
    <div>
</body>
</html>
</cfoutput>


