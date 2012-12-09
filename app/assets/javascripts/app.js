// create a model
// call Backbone.History.start
// assume convention: model has 'uiUrl' or something
//

var Book = Backbone.Model.extend({
  urlRoot: '/books'
});

var AppRouter = Backbone.Router.extend({
  routes: {
    "books/:id":            "showBook",
    "books/:id/search/:query":     "searchBook"
  },

  showBook: function(id) {
  },


  searchBook: function(id, query) {
  }

});


//Backbone.history.start({pushState: true})
