Gem::Support.new SUPPORT

module SUPPORT
  def self.GetCurrentVersion()
    return "1.1.2"
  end
  
  def self.GetCurrentConfigs()
    return Gem::Blast::bml
  end
  
  def self.ReturnCurrentUpdate()
    return "Miniblast1 :: Ruby 2.4.2 or Greater."
  end
end
