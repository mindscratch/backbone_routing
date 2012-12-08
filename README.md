## Usage

    bundle console

```ruby
require 'rhino'

BackboneServerside.call do |context|
  puts context.eval("Backbone")
end
```
