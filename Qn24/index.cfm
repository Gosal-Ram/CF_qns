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
            <h2 class="display-6">Subscribe form</h2>
            <form method="POST" action="">
                <div>
                    <label>Enter First Name </label>
                    <input type="text" name="firstName" id="firstName" class="form-control mt-4">
            
                    <label>Enter Mail</label>
                    <input type="text" name="mailId" id="mailId" class="form-control mt-4">
                    <button class ="btn my-2 btn-primary" onClick="validateMail()" type = "button" name = "vaildateButton">Check</button><br>
                    <input type="submit" name = "submitBtn"  value="Submit" class="btn btn-secondary mt-4" id = "buttonDisable" disabled>

                    <div>
                        <span class="text-danger text-center fw-bold" id="error"></span>
                    </div>
                </div>
            </form>
            
            <cfif structKeyExists(form, "submitBtn")> 

                <cfset local.value = createObject("component","component.index")>
                <cfset local.result = local.value.insertQuery(form.firstName, form.mailId)>
                <span class="text-success mt-4"> 
                    #local.result#
                </span> 
            </cfif>
        </div>
    </cfoutput>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="assets/js/index.js"></script>
</body>
</html>