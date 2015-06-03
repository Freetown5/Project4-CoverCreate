
//for one individual model (will probably erase this)
var BasicView = Backbone.View.extend({
  model: new Basic(),
  tagName: 'p',
  initialize: function(){
    this.template = _.template($('.basic-template').html()
    )
  },
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
    return this
  }
});

//for the whole list of models (in this case 1, starting off)
var BasicsView = Backbone.View.extend({
  model: new Basic(),
  el: $('.basics-default'),
  initialize: function(){
    this.model.on('add', this.render, this);
  },
  render: function(){
    var self = this;
    this.$el.html('');
    _.each(this.model.toArray(), function(basics){
      self.$el.append((new BasicView({model: basics})).render().el);
    });
    return this;
  }

});

var basicsView = new BasicsView();

$(document).ready(function(){
  $('.add-basics').on('click', function(){
    var basic = new Basic({
      yname: $('.yname-input').val(),
      ycity: $('.ycity-input').val(),
      yphone: $('.yphone-input').val(),
      yemail: $('.yemail-input').val()
    });
    console.log(basic.toJSON());
  $('.basics-default').append({basic});
    // basics.add(basic);
  })
});

//Per company view
var CompanyView = Backbone.View.extend({
  model: new Company(),
  tagName: 'p',
  initialize: function(){
    this.template = _.template($('.company-template').html()
    )
  },
  render: function(){
    this.$el.html(this.template(this.model.toJSON()));
    return this
  }
});

//All company view
var CompaniesView = Backbone.View.extend({
  model: basics,
  el: $('.companies-default'),
  initialize: function(){
    this.model.on('add', this.render, this);
  },
  render: function(){
    var self = this;
    this.$el.html('');
    _.each(this.model.toArray(), function(basics){
      self.$el.append((new CompanyView({model: companies})).render().el);
    });
    return this;
  }

});

var companiesView = new CompaniesView();

$(document).ready(function(){
  $('.add-companies').on('click', function(){
    var basic = new Basic({
      yname: $('.cname-input').val(),
      ycity: $('.ccity-input').val(),
      yphone: $('.cphone-input').val(),
      yemail: $('.cemail-input').val()
    });
    console.log(basic.toJSON());
  $('.companies-default').append({company});
    // companies.add(company);
  })
});
