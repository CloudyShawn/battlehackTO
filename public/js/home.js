var count = 0;
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
    
    window.setInterval(changeImpact,2000);
}
function changeImpact(){
    
    var impacts = ["improve communities.","empower people.","protect the environment.","save lives."];
    if(count>impacts.length){
        count = 0;
    }
    $("#change_impact").html(impacts[count]);
    count++;
    
}

$(document).ready(main);