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
        <h2 class="display-6">Score Result</h2>
        <form method="POST" action="">
            <div>
                <input type="number" name="number" class="form-control mt-4">
                <input type="submit" value="Submit" class="btn btn-secondary mt-4">
            </div>
        </form>
    
    <cfif structKeyExists(form, "number")> 
        <cfset local.num = form.number>
        <cfset local.value=createObject("component","index")>
        <cfset local.result=local.value.showResultUsingCase(local.num)>
        <span class="text-success mt-4"> 
            #local.result#
        </span> 
    </cfif> 
    <div>
</body>
</html>
</cfoutput>


