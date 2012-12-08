// create a model
// call Backbone.History.start
// assume convention: model has 'uiUrl' or something

var Workspace = Backbone.Router.extend({

    routes: {
        "help":                 "help",    // #help
        "search/:query":        "search",  // #search/kiwis
        "search/:query/p:page": "search"   // #search/kiwis/p7
    },

      help: function() {
                  ...
    },

      search: function(query, page) {
                    ...
    }

});