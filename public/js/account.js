function main(){
    console.log("main");
$('.slider-row .slider').on("change mousemove", function(event) {
    var target = $(event.target);//this is the slider moving
    var sliderActual = target.prop("id");
    var split = sliderActual.split("_");
    $("#"+split[1]+"_actual").val(target.val());
    console.log(target.val());
});

}
$(document).ready(main());