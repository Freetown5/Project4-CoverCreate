var BasicInfos = Backbone.Collection.extend({
  url:'http://localhost:3000/api/BasicInfos'
});

var basicInfoDefault = new BasicInfos({
  yname: "Your Name",
  ycity: "Your City",
  yphone: "Your Phone #:",
  yemail: "Your email address:"
})
