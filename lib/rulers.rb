require "miniblast/version"
require "miniblast/routing"
require "miniblast/util"
require "miniblast/dependencies"
require "miniblast/controller"
require "miniblast/file_model"

module Miniblast
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
          {'Content-Type' => 'text/html'}, []]
      end

      rack_app = get_rack_app(env)
      rack_app.call(env)
    end
  end
end
