<!--- <cfapplication name = "app" sessionmanagement = "yes"> --->
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
            <h2 class="display-6 mb-4">CMS Add Page</h2>
            <form method="POST" id="form-data" action="">
                <div>
                    <label>Enter pageName</label>
                    <input type ="text" name="pageName" class="form-control mt-4">
                    <label>Enter Page description</label>
                    <input type ="text" name="pageDesc" class="form-control mt-4">               
                    <input type ="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
                    <a class="btn btn-secondary mt-4" href="admin.cfm">admin page</a>
                </div>
            </form>

            <cfif structKeyExists(form,"submit")>  
                <cfset local.value = createObject("component","component.index")>
                <cfset local.result = local.value.addPage(form.pageName,form.pageDesc)>
                <span class="text-danger">
                    #local.result#
                </span>
            </cfif>    
        </div>
    </cfoutput> 
</body>
</html>
