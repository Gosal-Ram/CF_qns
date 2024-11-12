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
            <h2 class="display-6">ColdFusion Cookies</h2>
            <form method="POST" action="">
                <div>
                    <input type="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
                </div>
            </form>

            <cfif structKeyExists(form, "submit")> 
                <cfset local.value = createObject("component","component.index")>
                <cfset local.result = local.value.showCount()>
                Page visit count: #local.result#   
            </cfif>
        </div>
    </cfoutput>
</body>
</html>