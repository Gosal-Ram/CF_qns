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
            <form method="POST" action="">
                <div>
                    <label>Enter the text</label>
                    <textarea name="textAreaTxt" class="form-control mt-4" rows="4" cols="50"></textarea><br><br>
                    <div class="d-flex align-items-center">
                        <input type="submit" name = "submit"  value="Submit" class="btn btn-secondary mt-4">
                        <div class="mt-4 ms-4">
                            <a href="wordcount.cfm">
                                <input type="button" class="btn bg-success text-white m-2" name="wordcount" value="Task-2">
                            </a>
                        </div>
                         <div class="mt-4 ms-4">
                            <a href="task3.cfm">
                                <input type="button" class="btn bg-success text-white m-2" name="wordcount" value="Task-3">
                            </a>
                        </div>
                    </div>
                </div>
            </form>
            
            <cfif structKeyExists(form, "submit")> 

                <cfset local.value = createObject("component","component.tagCloud")>
                <cfset local.result = local.value.addTextDB(form.textAreaTxt)>
                <span class="text-success mt-4"> 
                    <cfdump  var="#local.result#">
                </span> 
            </cfif>
        </div>
    </cfoutput>
</body>
</html>