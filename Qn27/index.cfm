<cfapplication name = "app" sessionmanagement = "yes">
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
            <h2 class="display-6 mb-4">LogIn Page</h2>
            <form method="POST" id="form-data" action="" enctype="multipart/form-data">
                <div>
                    <label>Enter Username</label>
                    <input type ="text" name="name" class="form-control mt-4">
                    <div class="error text-danger" id = "nameError"></div><br>

                    <label>Enter Password</label>
                    <input type ="password" name="pwd" class="form-control mt-4">
                    <div class="error text-danger" id = "pwdError"></div><br>

                    <input type ="submit" name="submit" value="Submit" onClick="validationUsingJs()" class="btn btn-secondary mt-4">
                </div>
            </form>

            <cfif structKeyExists(form,"submit")>  
                <cfset local.value = createObject("component","component.index")>
                <cfset local.value.validateUser(form.name,form.pwd)>
                    <cfif local.value.isLoggedIn()>
                        <cflocation url="welcome.cfm" addToken="no"> 
                        <cfelse>
                            invalid output
                    </cfif>
            </cfif>  
        <div>
    </cfoutput> 
    <script src="assets/js/script.js"></script>  
</body>
</html>

