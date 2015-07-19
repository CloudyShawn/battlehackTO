function main() {
    $(".btn-charity").click(function (event) {
        event.target.toggleClass('active');
    });
    $("#sign_in").click(function(event){
        $("#register").toggleClass("hide");
    });
    $(".overlay").click(function(event){
        $("#register").toggleClass("hide");
    
    });
}

$(document).ready(main);