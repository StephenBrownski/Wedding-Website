(function($){

  // Some code
  $(document).on('click', '.close-alert', function() {
    $(this).closest('.alert-wrap').fadeOut();
  });

  $(document).on('click', '.menu-toggle', function() {
    $('.menu-links').slideToggle();
    $(this).toggleClass('active');
  });

})(jQuery);