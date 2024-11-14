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
        <h2 class="display-6">Coldfusion-DB Task 1.2</h2>
        <form method="POST" action="">
            <div>
                <label>Enter the text</label>
                <textarea name="textAreaTxt" class="form-control mt-4" rows="4" cols="50"></textarea><br><br>
                <input type="submit" name = "submit"  value="Submit" class="btn btn-secondary mt-4">
            </div>
        </form>
        
        <cfif structKeyExists(form, "submit")> 

            <cfset local.value = createObject("component","component.tagCloud")>
            <cfset local.result = local.value.showWords(form.textAreaTxt)>
            <cfset local.fontsize = 12>
            <div>
                <h4>Alphabetical order</h4>
                <cfdump  var="#local.result["key"]#">
            </div>
            <div>
                <h4>According to the count </h4>
                <cfdump  var="#local.result["count"]#">
            </div>
            <div>
                <h4>According to length of string</h4>
                <cfdump  var="#local.result["length"]#">
            </div>
        </cfif>
    </div>
</body>
</html>