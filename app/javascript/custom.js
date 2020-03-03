$(document).ready(function() {
    var text_max = 100;
    $('#textarea_feedback').html(text_max + ' characters remaining');
    $('#textarea').keyup(function() {
        var text_length = $('#textarea').val().length;
        var text_remaining = text_max - text_length;
        if(text_remaining >= 0 ){
        } else {
            document.getElementById('textarea_feedback').style.color = '#FC427B';
        }
        $('#textarea_feedback').html(text_remaining + ' characters remaining');
    });
});