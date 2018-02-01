showAction();
$('#showReaction').click(function(){
    showReaction();
});
$('#showAction').click(function(){
    showAction();
});
function showAction(){
    $('#reaction').hide();
    $('#action').show();
}
function showReaction(){
    $('#action').hide();
    $('#reaction').show();
}
