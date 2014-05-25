var App = function() {
  var self;
  var announcement = new Announcement();

  self = {
    init: function() {
      console.log("App Js");
      announcement.init();
    }
  }

  return self;
}


var app = new App();
app.init()
