var RegistrationModal = function() {

  var self = {};

  self = {

    initialize: function() {
      $(window).load(function() {
        if ($('#myModal').length > 0) {
          setTimeout(function() {
            $('#myModal').modal('show');
          }, 500);
        }
      });
    }
  }
  return self;
}

var registrationModal = new RegistrationModal();
registrationModal.initialize();
