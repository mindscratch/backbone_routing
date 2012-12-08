# BackboneRouting

Expose Backbone.js routes to Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'backbone_routing'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install backbone_routing

## Usage

```ruby
require 'rhino'

BackboneRouting.call do |context|
  context.load 'app/assets/javascripts/app.js'
  book = context.eval "new Book({id: 123});"
  puts "URL: #{book.eval_js('url()')}"
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
