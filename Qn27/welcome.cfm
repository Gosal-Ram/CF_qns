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
        <cfset local.value = createObject("component","component.index")>
        <cfset local.result = local.value.isLoggedIn()>
        <cfif local.value.isLoggedIn()>
            welcome
        <cfelse>
            <cflocation url="index.cfm" addToken="no">
        </cfif>
        <a href="components/index.cfc?method=logOut">Back to login</a>
    </cfoutput>    
</body>
</html>








