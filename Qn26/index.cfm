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
            <h2 class="display-6">Coldfusion-DB Task1</h2>
            <form method="POST" action="" enctype="multipart/form-data">
                <div>
                    <label for="myfile">Select a file: size should less than 1MB</label>
                    <input type="file" name ="txtFile" class="form-control mt-4">
                    <input type="submit" name = "submit"  value="Submit" class="btn btn-secondary mt-4">
                </div>
            </form>
            
            <cfif structKeyExists(form, "submit")> 
                <cffile  action="read" allowedextensions=".txt" file="#form.txtFile#" variable="fileText">
                <cfset local.value = createObject("component","component.index")>
                <cfset local.result = local.value.addText(fileText)>
                <span class="text-success mt-4"> 
                    <cfdump  var="#local.result#">
                </span> 
            </cfif>
        </div>
    </cfoutput>
</body>
</html>
