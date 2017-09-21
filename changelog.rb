module Miniblast
  # Returns the content of the Changelog
  def self.changelog_gem()
    Gem::Changelog.new CHANGELOG::DATA
  end
  
  module CHANGELOG
    DATA = File.open("CHANGELOG","r").read()
  end
end
