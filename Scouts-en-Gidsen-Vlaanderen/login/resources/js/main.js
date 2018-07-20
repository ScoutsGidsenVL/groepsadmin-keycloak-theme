$( "#passLabel" ).mousedown(function(e) { showPass(e,$(this).children("#password"))});
$( "#passLabel" ).mouseup(function(e) { hidePass( $(this).children("#password"))});
$( "#passLabelconfirm" ).mousedown(function(e) { showPass(e,$(this).children("#password-confirm"))});
$( "#passLabelconfirm" ).mouseup(function(e) { hidePass( $(this).children("#password-confirm"))});
$( "#passLabelconfirm" ).on('paste', function (e){  e.preventDefault();});

function showPass(e, node){
    if (e.offsetX > $( "#passLabel" ).width()-30) {
        node.attr('type', 'text');
    }
}
function hidePass(node){
    node.attr('type', 'password');
}

//modal
$( ".helpLink" ).click(function(){
    $( ".modal" ).css("display","block");
});
$( ".close" ).click(function(){
    $( ".modal" ).css("display","none");
});
$(window).click(function(event){
    if (event.target == $( ".modal" ).get()[0]) {
        $( ".modal" ).css("display","none");
    }
});
