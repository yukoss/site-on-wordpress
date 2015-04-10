(function ($) {

//region //===Same Height===//
    //==by Andrey Lavrenko==//
    maintainSameHeight($('[data-same-height="blog-info"]'));
    function maintainSameHeight($list) {
        var height = 0;
        $list.each(function () {
            var $this = $(this);
            if ($this.outerHeight() > height) {
                height = $this.outerHeight();
            }
        });
        $list.css("height", height);
    };
//endregion

//region //===Pagination hide elements===/
    $('.prev').addClass('left_arrow hvr-wobble-horizontal');
    $('.next').addClass('right_arrow hvr-wobble-horizontal');

    var pagination = $('.pagination a, .pagination span');
    if (pagination.hasClass('page-numbers')) {

        pagination.css('display', 'none');

        if (pagination.hasClass('next')) {

            $('.pagination .next, .pagination .prev').css('display', 'block');
        }
    };
//endregion/

//region //===Subscribe===//
    $('.widgetGuts label').text('');
    $('dd .subscribeButton').addClass('subscribe_submit').attr('value', '');
//endregion

//region //===Search form===//
    $('#searchsubmit').addClass('search_submit').attr('value', '');
    $('#searchform').find('label').text('Search');
//endregion

})(jQuery);








