require "yaml"

Gem::Blast.new BLAST
Gem::Loader.new CONFIGS

# Start Blast Module.
module BLAST
  bml = YAML.load_file(File.join(File.expand_path("../."),"blast.yml")
  if not bml["Ruby"]
    puts "Blast :: Internal Error :: Value Invalid/Not Found"
  else
    CONFIGS::RUBY = bml["Ruby"]
    puts "Blast :: Value Ok"
  end
  if not bml["Ruby_Version"]
    puts "Blast :: Internal Error :: Value Invalid/Not Found"
  else
    CONFIGS::RUBY_VERSION = bml["Ruby_Version"]
    puts "Blast :: Value Ok"
  end
  if not bml["Author"]
    puts "Blast :: Internal Error :: Value Invalid/Not Found"
  else
    CONFIGS::AUTHOR = bml["Author"]
    puts "Blast :: Value Ok"
  end
  if not bml["Email"]
    puts "Blast :: Internal Error :: Value Invalid/Not Found"
  else
    CONFIGS::EMAIL = bml["Email"]
    puts "Blast :: Value Ok"
  end
  if not bml["Product_Version"]
    puts "Blast :: Internal Error :: Value Invalid/Not Found"
  else
    CONFIGS::PRODUCT_VERSION = bml["Product_Version"]
    puts "Blast :: Value Ok"
  end
  if not bml["Files"]
    puts "Blast :: Internal Error :: Value Invalid/Not Found"
  else
    CONFIGS::Files = bml["Files"]
    puts "Blast :: Value Ok"
  end
end

module CONFIGS
  RUBY = True
  RUBY_VERSION = "2.4.2"
  AUTHOR = "Author"
  EMAIL = "email@email.com"
  PRODUCT_VERSION = "1.0.0"
  FILES = []
end
