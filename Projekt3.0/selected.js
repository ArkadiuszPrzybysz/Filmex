$(".select-buttons > .btn").click(function(){
    $('.select-buttons .btn.checked').not(this).removeClass('checked');
    $(this).toggleClass('checked');
 });
