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
    <div class="d-flex flex-column justify-content-center align-items-center mt-4">
        <h2 class="display-6 mb-4">CMS Login Page</h2>
        <form method="POST" id="form-data" action="">
            <div>
                <label>Enter Username</label>
                <input type ="text" name="userName" id="userName" class="form-control mt-4">
                <div class="error text-danger" id = "nameError"></div><br>
                <label>Enter Password</label>
                <input type ="password" name="pwd" id="pwd" class="form-control mt-4">
                <div class="error text-danger" id = "pwdError"></div><br>                
                <input type ="submit" name="submit" value="Submit" onclick="return logInCheck(event)" class="btn btn-secondary mt-4">
                <div class="mt-4">
                    <span>Don't have an account? <a href="Signup.cfm">Sign up</a></span>
                </div>
            </div>
        </form>

        <cfif structKeyExists(form,"submit")>  
            <cfset local.value = createObject("component","component.index")>
            <cfset local.result = local.value.logIn(form.userName,form.pwd)>
            <span class="text-danger">
                <cfdump var = "#local.result#">
            </span>
        </cfif>    
    </div>
        <script src="assets/js/script.js"></script>
</body>
</html>
