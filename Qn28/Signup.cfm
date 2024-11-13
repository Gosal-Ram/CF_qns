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
            <h2 class="display-6 mb-4">CMS SignUp Page</h2>
            <form method="POST" id="form-data" action="">
                <div>
                    <label>Enter Username</label>
                    <input type ="text" name="userName" id="userName" class="form-control mt-4">
                    <div class="errorUserName text-danger" id ="nameError"></div><br>

                    <label>Enter Password</label>
                    <input type ="password" name="pwd1" id = "pwd1" class="form-control mt-4">
                    <span class="errorPwd1  text-danger" id = "errorPwd1"></span><br>
                    <label>Re Enter Password</label>
                    <input type ="password" name="pwd2" id = "pwd2" class="form-control mt-4">
                    <span class="errorPwd2  text-danger" id = "errorPwd2"></span><br>                
                    
                    <select name="role">
                        <option value="admin">Admin</option>
                        <option value="editor">Editor</option>
                        <option value="user">User</option>
                    </select><br>

                    <input type ="submit" name="submit" value="Submit" onClick="" class="btn btn-secondary mt-4"><br>
                    <div class="mt-4">
                        <span>Already have an account?<a href="Login.cfm" >Login  </a></span>
                    </div>
                </div>
            </form>

            <cfif structKeyExists(form,"submit")>  
                <cfset local.value = createObject("component","component.index")>
                <cfset local.result = local.value.signUp(form.userName,form.pwd1,form.pwd2,form.role)>
                <span class="text-danger">
                    <cfdump var="#local.result#">
                </span>
            </cfif>  
        <div>
    </cfoutput> 
    <script src="assets/js/script.js"></script>  
</body>
</html>
