/* Kelmu annotations */
(function($) {
  'use strict';

  var data = window.kelmu.data = {};

  @@ANNOTATIONS@@

  $(function() {
    setTimeout(function() {
      $('.jsvee-animation').each(function() {
        if ($(this).attr('data-id') && window.kelmu.data[$(this).attr('data-id')])
          window.kelmu.initAnnotations($(this), $(this).attr('data-id'));
      })
    }, 200);
  });
}(jQuery));
