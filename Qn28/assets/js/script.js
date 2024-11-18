function signupCheck(event){
    // alert("function called");
    var userName=document.getElementById("userName").value;
    var pass1=document.getElementById("pwd1").value;
    var pass2=document.getElementById("pwd2").value;

    document.getElementById("nameError").innerHTML="";
    document.getElementById("errorPwd1").innerHTML="";
    document.getElementById("errorPwd2").innerHTML="";

    if(userName.length == 0)
    {
        document.getElementById("nameError").innerHTML="Enter the user name";
        event.preventDefault();
    }

    if(pass1.length==0)
    {
        document.getElementById("errorPwd1").innerHTML= "Enter the password";
        event.preventDefault();
    }   

    if(pass1 != pass2)
    {
        document.getElementById("errorPwd2").innerHTML="Password mismatch";
        event.preventDefault();
    }
      
}


function logInCheck(event){
    // alert("function called");
    var userName = document.getElementById("userName").value;
    var pass = document.getElementById("pwd").value;

    document.getElementById("nameError").innerHTML="";
    document.getElementById("pwdError").innerHTML="";

    if(userName.length == 0)
    {
        document.getElementById("nameError").innerHTML="Enter the user name";
        event.preventDefault();
    }

    if(pass.length==0)
    {
        document.getElementById("pwdError").innerHTML= "Enter the password";
        event.preventDefault();
    }   
  
}


function deletePage(pageId){
   
    // var choice= confirm("Confirm delete")
    // console.log(choice);
    if(confirm("Confirm delete")){
        $.ajax({
            type:"POST",
            url: "component/index.cfc?method=deletePage",
            data:{pageId: parseInt(pageId)},
            success:function(data){
                if(data){
                    location.reload();
                }
            }
        })
    }
}

function logOut(){
   
    // var choice= confirm("Confirm delete")
    // console.log(choice);
    if(confirm("Confirm logout")){
        $.ajax({
            type:"POST",
            url: "component/index.cfc?method=logOut",
            success:function(){
              //window.location.href = "Login.cfm"
              location.reload();
            }
        })
    }
} 




function editPage(pageId){  
    // alert("click")
    $.ajax({
        type:"POST",
        url: "component/index.cfc?method=goToEditPage",
        data:{pageId: parseInt(pageId)},
        success: function(){
            window.location.href = "editPage.cfm";
        }
    })

}