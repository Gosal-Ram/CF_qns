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