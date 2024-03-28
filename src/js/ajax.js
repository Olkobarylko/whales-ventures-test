jQuery(function($){
    $('input[name="category[]').change(function(){
        var selectedCategories = $('input[name="category[]"]:checked').map(function(){
            return $(this).val();
        }).get();

        $.ajax({
             url: ajaxfilter.ajaxurl,
            data: { action: 'filter', category: selectedCategories },
            type: 'POST',
            success: function(data) {
                $('.blog__wrapper').html(data);
            }
        });
    });
});