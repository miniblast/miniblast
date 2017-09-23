require "rulers/version"

module Miniblast
class Application
   def call(env)
     `echo debug > debug.txt`;
     [200, {'Content-Type' => 'text/html'},
      ["Hello from Miniblast!"]]
   end
end
end
