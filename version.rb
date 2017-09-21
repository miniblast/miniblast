module Miniblast
  # Returns the current version.
  def self.version_gem()
    Gem::Version.new VERSION::VALUE
  end
  
  module VERSION
    MAJOR = 1
    MINOR = 0
    RELEASE = 1
    PRE = "alpha"
    
    VALUE = [MAJOR,MINOR,RELEASE,PRE].compact.join(".")
  end
end
