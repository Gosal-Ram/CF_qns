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
        <h2 class="display-6">Subscribe to our newsletter</h2>
        <cfset local.captchaText = "qwerty">
        <cfimage action = "captcha"  difficulty ="medium" text="#local.captchaText#"><br>
        <form method="POST" action="">
            <div>
                <label>Enter Captcha</label>
                <input type="text" name="captcha" class="form-control mt-4">
                <label>Enter Mail</label>
                <input type="text" name="mail" class="form-control mt-4">
                <input type="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
            </div>
        </form>
 
        <cfif structKeyExists(form,"submit")> 
            <cfset local.captcha = form.captcha>
            <cfset local.mail = form.mail>
            <cfset local.value = createObject("component","component.index")>
            <cfset local.result = local.value.validateCaptcha(local.captcha, local.mail, local.captchaText)> 
            <cfoutput>
                #local.result#
            </cfoutput>
        </cfif>
    </div>
</body>
</html>
