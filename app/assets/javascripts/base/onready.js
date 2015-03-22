(function($){

  // Some code
  $(document).on('click', '.close-alert', function() {
    $(this).closest('.alert-wrap').fadeOut();
  });

})(jQuery);