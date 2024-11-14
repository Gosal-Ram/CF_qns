<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<!---     <link rel="stylesheet" href="../../../bootstrap-5.0.2-dist/bootstrap-5.0.2-dist/css/bootstrap.min.css"> --->
</head>
<body>
    <cfoutput>
        <div class="d-flex flex-column justify-content-center align-items-center mt-4"> 
            <h2 class="display-6 mb-4">User Page</h2>
            <cfset local.value = createObject("component","component.index")>
            <cfset local.result= local.value.fetchPage()>
            <cfloop query="local.result">
                <button class="btn btn-primary my-3" type="button" data-bs-toggle="collapse" data-bs-target="###local.result.page_id#">#page_name#</button>
                <div class="collapse" id="#local.result.page_id#">#local.result.page_description#</div>
            </cfloop>
        </div>
    </cfoutput>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<!---     <script src="../../../bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script> --->
</body>
</html>

