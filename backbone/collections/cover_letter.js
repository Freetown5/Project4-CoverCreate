var Basics = Backbone.Collection.extend({});

var basicInfoDefault = new Basic({
  yname: "Your Name",
  ycity: "Your City",
  yphone: "Your Phone #:",
  yemail: "Your email address:"
})

var basics = new Basics([basicInfoDefault]);
