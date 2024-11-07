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
        <h2 class="display-6">Pattern</h2>
        
            <cfset local.value=createObject("component","index")>
            <cfset local.result=local.value.showUserAge(local.userDob)>
            <span class="text-success mt-4"> 
                #local.result#
            </span> 
        </cfif>
    <div>
</body>
</html>
</cfoutput>
