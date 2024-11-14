function validateForm() {
    var number = document.getElementById("number").value;
    if (isNaN(number) || number.trim() === "") {
        document.getElementById("error").innerHTML = "Please enter a valid number";
        return false;
    }
    return true;
}
