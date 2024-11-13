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
            <h2 class="display-6">Function multiplication using cfinvoke</h2>

            <cfset local.value = createObject("component","component.index")>
            <cfset local.result = local.value.multiply(1,2)>
            
            <cfobject name="multiplyObject" type ="component" component="component.index">
            <cfset local.valueObject = multiplyObject.multiply(1,2,3)>

            <cfinvoke method="multiplyUsingInvoke" component="component.index" returnvariable="valueFromInvoke">
                <cfinvokeargument name = "value1" value = "1">
                <cfinvokeargument name = "value2" value = "2">
                <cfinvokeargument name = "value3" value = "3">
                <cfinvokeargument name = "value4" value = "4">
            </cfinvoke>
            
            <span class="fw-bold text-success mt-4"> Using create Object  multiply(1,2) : #local.result# </span> 
            <span class="text-success mt-4"> Using cfObject multiply(1,2,3)  :  #local.valueObject# </span> 
            <span class="text-success mt-4">Using cfInvoke  multiply(1,2,3,4) : #valueFromInvoke# </span> 

        <div>
    </cfoutput>
</body>
</html>
