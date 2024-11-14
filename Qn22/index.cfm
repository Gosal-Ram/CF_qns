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
            <h2 class="display-6">Reading JSON file via Coldfusion</h2>
            <form method="POST" action="">
                <div>
                    <input type="submit" name="submit" value="Submit" class="btn btn-secondary mt-4">
                </div>
            </form>
            <cfif structKeyExists(form, "submit")> 
                <cfset jsonData = [{"Name":"saravanan","Age":27,"Location":"dubai"},{"Name":"Ram","Age":26,"Location":"Kovilpatti"}] >
                <table class="border border-dark w-25 table table-bordered text-center my-3">
                    <tr>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Location</th>
                    </tr>
                    <cfloop index ="i" from ="#1#" to ="#jsonData.len()#">
                        <tr>
                            <td>#jsonData[i].Name#</td>
                            <td>#jsonData[i].Age#</td>
                            <td>#jsonData[i].Location#</td>
                        </tr>
                    </cfloop>
                </table>
            </cfif>
        </div>
    </cfoutput>
</body>
</html>