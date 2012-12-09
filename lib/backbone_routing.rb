require 'rhino'

require "backbone_routing/version"

module BackboneRouting
  def self.load_sources(files, context)
    files.each do |file|
      puts "context: #{context}, file=#{file}"
      context.load file
    end
  end

  def self.call(cache_context=false)
    process = ->(context) do
      vendor_path = File.join('vendor', 'assets', 'javascripts')
      assets = [File.join(vendor_path, 'underscore.js'), File.join(vendor_path, 'backbone.js')]
      assets += [File.join('app', 'assets', 'javascripts', 'app.js')]
      self.load_sources assets, context
      yield context
    end

    if cache_context
      self.ctx ||= Rhino::Context.open { |context| process.call(context) }
    else
      self.ctx = Rhino::Context.open { |context| process.call(context) }
    end
  end

  def self.ctx=(ctx)
    @@ctx = ctx
  end

  def self.ctx
    @@ctx
  end
end

BackboneRouting.call do |ctx|
  ctx['book'] = ctx.eval 'new Book({id: 593});'
  ctx['router'] = ctx.eval 'new AppRouter();'

  puts "Routes:", ctx.eval('router.routes')
end