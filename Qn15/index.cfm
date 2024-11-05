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
        <h2 class="display-6">Function multiplication</h2>
        <cfset local.value=createObject("component","index")>
        <cfset local.res = local.value.mulitiply(1,2)>
        <cfobject  name="mulitiplyObject" type ="component" component="index">
        <cfset local.valueObject = mulitiplyObject.mulitiply(1,2,3)>
        <cfinvoke  method="mulitiplyInvoke" component="index" returnvariable="valueFromInvoke">
            <cfinvokeargument  name="val1"  value="1">
            <cfinvokeargument  name="val2"  value="2">
            <cfinvokeargument  name="val3"  value="3">
            <cfinvokeargument  name="val4"  value="4">
        </cfinvoke>

        <span class="fw-bold text-success mt-4"> 
        Using create Object  mulitiply(1,2) : #local.res#
        </span> 

     
        <span class="text-success mt-4"> 
        Using cfObject mulitiply(1,2,3)  :  #local.valueObject#
        </span> 

   
        <span class="text-success mt-4"> 
        Using cfInvoke  mulitiply(1,2,3,4) : #valueFromInvoke#
        </span> 

    <div>
</body>
</html>
</cfoutput>
