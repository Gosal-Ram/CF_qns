<cfoutput>
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
        <h2 class="display-6">Pattern</h2>
        <form method="POST" action="">
            <div>
                <label>Enter Mom's Date of Birth</label>
                <input type="date" name="momDob" class="form-control mt-4">
                <label>Enter User's Date of Birth</label>
                <input type="date" name="userDob" class="form-control mt-4">
                <input type="submit" value="Submit" class="btn btn-secondary mt-4">
            </div>
        </form>


        <cfif structKeyExists(form, "momDob")> 
            <cfset local.momDob = form.momDob>
            <cfset local.userDob = form.userDob>
            <cfset local.value=createObject("component","index")>
            <cfset local.result1=local.value.showUserAge(local.userDob)>
            <span class="text-success mt-4"> 
            User's Age
                #local.result1#
            </span> 

            <cfset local.result2=local.value.showMomAge(local.momDob)>
            <span class="text-success mt-4"> 
            Mom's Age when son born is
                #local.result2#
            </span> 

            <cfset local.result3=local.value.daysForMomBday(local.momDob)>
            <span class="text-success mt-4"> 
            Days remaining for Mom B'day
            #local.result3#
            </span> 
            </span> 
        
            <cfset local.result4=local.value.daysForUserBday(local.userDob)>
            <span class="text-success mt-4"> 
            Days remaining for User B'day
            #local.result4#
            </span>  
        </cfif>
    <div>
</body>
</html>
</cfoutput>
