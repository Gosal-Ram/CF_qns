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
        <h2 class="display-6">Birthday Wishes via mail</h2>
        <form method="POST" action="">
            <div>
                <label>Enter the Name of Birthday person</label>
                <input type="text" name="personName" class="form-control mt-4">
           
                <label>Enter Mail</label>
                <input type="email" name="personMail" class="form-control mt-4">
          
                <label>Enter Birthday Wishes</label>
                <input type="text" name="personWishes" class="form-control mt-4">
          
                <label for="myfile">Select a file:</label>
                <input type="file" id="personFile" class="form-control mt-4">
                <input type="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
            </div>
        </form>
        <cfif structKeyExists(form, "submit")> 
            <cfset 
            <cfset local.personName = form.personName>
            <cfset local.personMail = form.personMail>
            <cfset local.personWishes = form.personWishes>
            <cfset local.personFile = form.personFile>
            <cfset local.value = createObject("component","component.index")>
            <cfset local.result = local.value.sendWishes(local.personName,local.personMail,local.personWishes,local.personFile)>

        </cfif>
    </div>
    
</body>
</html>