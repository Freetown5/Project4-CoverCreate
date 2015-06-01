var BasicInfoView = Backbone.View.extend({
  model: new BasicInfo(),
  tagName: 'p',
  initialize: function(){
    this.template = _.template($('.basic-info-template').html())
  },

  events:{
    'click .edit-blog': 'edit'
  },

  edit:function(){
    $('.edit-blog').hide();

    var yname = this.$('.yname').html();
    var ycity = this.$('.ycity').html();
    var yphone = this.$('.yphone').html();
    var yemail = this.$('yemail').html();
  }
})
