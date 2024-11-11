function validateMail(){
    var firstname = document.getElementById("firstName").value;
    var email = document.getElementById("mailId").value;
    var button = document.getElementById("buttonDisable");
    if((firstname == "") || (email == "")){
        document.getElementById("error").innerHTML="Enter all details"
    }
    else{
        $.ajax({
            type:"POST",
            url:"component/index.cfc.?method=verifyEmail",
            data: {email:email},
            success: function(disable){
                if(!disable){
                    button.disabled = false;
                }
            }
        });
    }
}