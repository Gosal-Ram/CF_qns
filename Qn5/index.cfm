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
            <h2 class="display-6 mb-4">Birthday Calculater</h2>
            <form method="POST" action="">
                <div>
                    <label>Enter Mom's Date of Birth</label>
                    <input type="date" name="momDob" class="form-control my-4">
                    <label>Enter User's Date of Birth</label>
                    <input type="date" name="userDob" class="form-control my-4">
                    <input type="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
                </div>
            </form>


            <cfif structKeyExists(form,"submit")> 
                <cfset local.momDob = form.momDob>
                <cfset local.userDob = form.userDob>
                <cfset local.value = createObject("component","component.index")>
                <cfset local.resultUserAge = local.value.showUserAge(local.userDob)>
                <span class="text-success mt-4 fw-bold"> 
                    User's Age
                    #local.resultUserAge#
                </span> 

                <cfset local.resultMomAge=local.value.showMomAge(local.momDob)>
                <span class="text-success mt-4"> 
                    Mom's Age when son born is
                    #local.resultMomAge#
                </span> 

                <cfset local.resultdaysForMomBday=local.value.daysForMomBday(local.momDob)>
                <span class="text-success mt-4"> 
                    Days remaining for Mom B'day
                    #local.resultdaysForMomBday#
                </span>  
            
                <cfset local.resultdaysForUserBday=local.value.daysForUserBday(local.userDob)>
                <span class="text-success mt-4"> 
                    Days remaining for User B'day
                    #local.resultdaysForUserBday#
                </span>  
            </cfif>
        <div>
    </cfoutput>
</body>
</html>

