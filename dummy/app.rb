class Handler
  def self.call(env)
    pp env

    [200, {}, ['OK']]
  end
end

require 'rack'

my_rack_proc = lambda { |env| Handler.call(env) }

Rack::Handler::WEBrick.run my_rack_proc, :Port => 9876
