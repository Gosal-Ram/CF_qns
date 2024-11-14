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
            <h2 class="display-6 mb-4">Image Validater</h2>
            <form method="POST" action="" enctype="multipart/form-data">
                <div>
                    <label>Enter the image name</label>
                    <input type ="text" name="imgName" class="form-control mt-4">
                
                    <label>Enter the image description</label>
                    <textarea name="imgDesc" class="form-control mt-4"></textarea><br><br>
                
                    <label for="myfile">Select a file: size should less than 1MB</label>
                    <input type="file" name ="imgFile" class="form-control mt-4">
                    <input type ="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
                </div>
            </form>

            <cfif structKeyExists(form,"submit")> 
                <cfset local.value = createObject("component","component.index")>
                <cfset local.result = local.value.validate(form.imgName,form.imgDesc,form.imgFile)>
                    <div>
                        <cfif local.result["error"] EQ 0>
                            <span class="fw-bold text-danger"><cfdump  var="Size should not exceed 1MB"></span>
                            <cfelse>
                                <a href="./imgPage.cfm" class="">
                                    <div><cfimage action="writeToBrowser" source="#local.result["imgFile"]#" width="20" height="20"></div>
                                        <span class="fw-bold"><cfdump  var="#imgName#"></span>
                                </a>
                        </cfif>
                    </div>
                   <cfset session.fileImg = local.result>
            </cfif>  
        <div>
    </cfoutput>    
</body>
</html>