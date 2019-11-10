(function ($, window, document, undefined) {

    var gridContainer = $('#grid-container'),
        filtersContainer = $('#filters-container');

    // init cubeportfolio
    gridContainer.cubeportfolio({
       
        animationType: 'bounceTop',

        gapHorizontal: 60,

        gapVertical: 20,

        gridAdjustment: 'responsive',

        caption: 'revealBottom',

        displayType: 'lazyLoading',

        displayTypeSpeed: 400

        // NOTE: lightbox is not enabled in this example

        // NOTE: singlePage is not enabled in this example
    });

    // add listener for filters click
    filtersContainer.on('click', '.cbp-filter-item', function (e) {
        
        var me = $(this);

        // get cubeportfolio data and check if is still animating (reposition) the items.
        if ( !$.data(gridContainer[0], 'cubeportfolio').isAnimating ) {
            me.addClass('cbp-filter-item-active').siblings().removeClass('cbp-filter-item-active');
        }

        // filter the items
        gridContainer.cubeportfolio('filter', me.data('filter'), function () {});
    
    });


    // activate counter for filters
    gridContainer.cubeportfolio('showCounter', filtersContainer.find('.cbp-filter-item'));

})(jQuery, window, document);