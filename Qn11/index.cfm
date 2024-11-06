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
            <h2 class="display-6">Function multiplication</h2>
            <cfset local.value=createObject("component","index")>
            <cfset local.result = local.value.multiply(1,2)>
            <span class="text-success mt-4">  multiply(1,2) =><cfdump var="#local.result#"></span> 

            <cfset local.result2 = local.value.multiply(1,2,3)>
            <span class="text-success mt-4">   multiply(1,2,3) =><cfdump var="#local.result2#"></span> 

            <cfset local.result3 = local.value.multiply(1,2,3,4)>
            <span class="text-success mt-4">   multiply(1,2,3,4) =><cfdump var="#local.result3#"></span> 
        </div>
    </cfoutput>

</body>
</html>

