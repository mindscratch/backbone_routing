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
end
