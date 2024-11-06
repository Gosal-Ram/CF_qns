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
            <h2 class="display-6 mb-4">Key Value Pair</h2>
            <form method="POST" action="">
                <div>
                    <label>Enter Key</label>
                    <input type="text" name="key" class="form-control mt-4">
                    <label>Enter Value</label>
                    <input type="text" name="value" class="form-control mt-4">
                    <input type="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
                </div>
            </form>


            <cfif structKeyExists(form, "submit")> 
                <cfset local.key = form.key>
                <cfset local.value = form.value>
                <cfset local.value2 = createObject("component","index")>
                <cfset local.result = local.value2.showStructure(local.key,local.value)>
                <span class="text-success mt-4 fw-bold"> 
                    <cfdump var="#local.result#">
                </span> 
            </cfif>
        <div>
    </cfoutput>
</body>
</html>
