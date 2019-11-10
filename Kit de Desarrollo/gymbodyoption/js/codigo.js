

$(function(){
    $('[data-toggle=tooltip]').tooltip();
    $('body').scrollspy({ target: '#navegacion' });
        
    var menu = $('#menu'),
        menuItems = menu.find('a');
    
    menuItems.on('click', function(e){
        var href = $(this).attr('href');
        $(href).animatescroll({
            scrollSpeed: 2000
        });
        e.preventDefault();
    });
    
    
    $('.tp-banner').revolution({
        delay:15000,
        startwidth:1170,
        startheight:500,
        hideThumbs:10,
        fullWidth:"off",
        fullScreen:"on",
        fullScreenOffsetContainer: "",
        fullScreenAlignForce:"on"
    });
    
    $('.content').magnificPopup({
		delegate: 'li',
		type: 'image',
		closeOnContentClick: false,
		closeBtnInside: false,
		mainClass: 'mfp-with-zoom mfp-img-mobile',
		gallery: {
			enabled: true
		},
		zoom: {
			enabled: true,
			duration: 300, // don't foget to change the duration also in CSS
			opener: function(element) {
				return element.find('img');
			}
		}
		
	});
    
    
});