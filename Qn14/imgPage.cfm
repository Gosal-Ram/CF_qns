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
            <h2 class="display-6 mb-4">Img Display</h2>
                <p class="fw-bold">
                    Image Name : <cfdump  var="#session.fileImg["imgName"]#">
                </p>
                <p class="fw-bold">
                    Image Description:<cfdump  var="#session.fileImg["imgDesc"]#"><br>
                </p>
                <div>
                    <cfimage action="writeToBrowser" source="#session.fileImg["imgFile"]#" width="100%">
                </div>
            
        <div>
    </cfoutput>    
</body>
</html>