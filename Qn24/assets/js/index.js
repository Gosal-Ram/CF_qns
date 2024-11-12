function validateMail(){
    var firstname = document.getElementById("firstName").value;
    var mailId = document.getElementById("mailId").value;
    var button = document.getElementById("buttonDisable");
    var errorElement = document.getElementById("error");

    errorElement.innerHTML = "";


    if((firstname === "") || (mailId === "")){
        errorElement.innerHTML="Enter all details";
       
    }
    else{
    $.ajax({
        type: "POST",
        url: "component/index.cfc?method=verifyEmail",
        data: { mailId: mailId },
        success: function(response) {
            if (response) { 
                errorElement.innerHTML = "Mail id is already there";
                button.disabled = true;
            } else {
                button.disabled = false;
                errorElement.innerHTML = "Click Submit to Subscribe";
            }
        }
    });
    }
}
    