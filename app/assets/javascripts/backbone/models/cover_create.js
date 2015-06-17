var Referral = Backbone.Model.extend({
  initialize: function(){
    console.log('A referral model has been created')
  },

  validate: function(attrs){
    if (!attrs.date){
      return "Date is required";
    }
    if (!attrs.poc_lastname){
      return "Person of Contact's Last Name required";
    }
    if (!attrs.poc_firstname){
      return "Person of Contact's First Name is required";
    }
    if (!attrs.poc_title){
      return "Person of Contact's Title is required";
    }
    if (!attrs.reference){
      return "Please enter your reference here";
    }
    if (!attrs.position_info){
      return "Enter position information here";
    }
    if (!attrs.skills){
      return "Please enter relevant skills here";
    }
  }
})

var OpenApply = Backbone.Model.extend({
  initialize: function(){
    console.log('An open application model has been created')
  },

  validate: function(attrs){
    if (!attrs.date){
      return "Date is required"
    }
    if (!attrs.poc_first_name){
      return "Person of Contact first name is required"
    }
    if (!attrs.poc_last_name){
      return "Person of Contact last name is required"
    }
    if (!attrs.ytitle){
      return "Your job (or former job) title is required"
    }
    if (!attrs.desired_position){
      return "Please include the name of the position your most desired position"
    }
    if (!attrs.industry_type){
      return "Please include your industry of interest"
    }
    if (!attrs.position_found){
      return "Please include where you found this position"
    }
    if (!attrs.open_position){
      return "Please include the name of the position you are applying for"
    }
    if (!attrs.position_info){
      return "Please include information about the position for which you are applying"
    }
    if (!attrs.relevant_skills){
      return "Please include skills relevant to this position"
    }
  }
})

var Inquiry = Backbone.Model.extend({
  initialize: function(){
    console.log('An inquiry model has been created')
  },

  validate: function(attrs){
    if (!attrs.date){
      return "Date is required"
    }
    if (!attrs.poc_first_name){
      return "Person of Contact first name is required"
    }
    if (!attrs.poc_last_name){
      return "Person of Contact last name is required"
    }
    if (!attrs.ytitle){
      return "Your job (or former job) title is required"
    }
    if (!attrs.position_type){
      return "Please include the type of position your looking for"
    }
    if (!attrs.industry_type){
      return "Please include your industry of interest"
    }
    if (!attrs.specialty){
      return "Please include what you specialize in"
    }
    if (!attrs.hard_skills){
      return "Please include specific skills you have"
    }
    if (!attrs.relevant_skills){
      return "Please include skills relevant to this position"
    }
    if (!attrs.culture){
      return "Please explain how you would fit into the culture"
    }
  }
})
