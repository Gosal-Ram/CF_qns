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
            <h2 class="display-6 mb-4">Editor Page</h2>
            <cfset local.value = createObject("component","component.index")>
            <cfset local.result= local.value.fetchPage()>
            <cfloop query="local.result">
                <div class="d-flex align-items-center gap-5">
                    <button class="btn btn-primary my-3" type="button" data-bs-toggle="collapse" data-bs-target="###local.result.page_id#">#page_name#</button>
                    <div class="collapse" id="#local.result.page_id#">#local.result.page_description#</div>
                    <button class="btn btn-primary" id="editBtn" onClick="editPage(#local.result.page_id#)">edit</button>
                    <button class="btn btn-secondary mt-2" id="deleteBtn" onClick="deletePage(#local.result.page_id#)">delete</button>
                </div>
            </cfloop>
            <a href ="addPage.cfm" class="btn btn-primary" id="addBtn" >add</a>
        </div>
    </cfoutput>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="assets/js/script.js"></script>
<!---     <script src="../../../bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script> --->
</body>
</html>

