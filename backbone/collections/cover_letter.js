var Basics = Backbone.Collection.extend({});

var basicInfoDefault = new Basic({
  yname: 'Your Name',
  ycity: 'Your City',
  yphone: 'Your Phone #:',
  yemail: 'Your email address:'
});

var basics = new Basics([basicInfoDefault]);


// var Companies = Backbone.Collecton.extend({});
//
// var companyInfoDefault = new Company({
//   cname:'Company Name',
//   ccity:'Company City',
//   cphone:'Company Phone',
//   cemail:'Company Email'
// })
//
// var companies = new Companies([companyInfoDefault]);
