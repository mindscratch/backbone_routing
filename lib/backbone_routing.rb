require 'rhino'

require "backbone_routing/version"

module BackboneRouting
  def self.call
    Rhino::Context.open do |context|
      context.load "vendor/assets/javascripts/underscore.js"
      context.load "vendor/assets/javascripts/backbone.js"

      yield context
    end
  end

  def self.ctx=(ctx)
    @@ctx = ctx
  end

  def self.ctx
    @@ctx
  end
end

BackboneRouting.ctx = BackboneRouting.call do |ctx|
  ctx.load 'app/assets/javascripts/app.js'
  ctx['book'] = ctx.eval 'new Book({id: 593});'
  ctx['router'] = ctx.eval 'new AppRouter();'

  puts "Routes:", ctx.eval('router.routes')
  ctx
end