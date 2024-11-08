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
        <h2 class="display-6">Validation</h2>
        <form method="POST" action="">
            <div>
                <label>Enter value</label>
                <input type="text" name="key" class="form-control mt-4">
                <input type="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
            </div>
        </form>
<!--- 
        <cfif structKeyExists(form, "submit")> 
            <cfset local.key = form.key>
            <cfset local.value = createObject("component","index")>
            <cfset local.result = local.value.showData(local.key)>
<!---       <cfdump  var = "#local.result#">  --->
            <table class="border border-dark w-25 table table-bordered text-center my-3">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                </tr>
                <cfoutput query ="local.result">
                    <tr>
                        <td>#firstName#</td>
                        <td>#lastName#</td>
                    </tr>
                </cfoutput>
            </table>
            <cfoutput>
                <p class="fw-bold">
                    First Name of Person : <span class="text-success">#local.result.firstName[form.key]#</span>
                </p>
            </cfoutput>
        </cfif>

         --->
    </div>
</body>
</html>