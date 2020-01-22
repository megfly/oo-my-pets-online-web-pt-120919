class Owner
  attr_accessor 
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
    @cats = []
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def self.all
    @@all
  end 
  
  def self.count 
    self.all.length
  end 
  
  def self.reset_all 
    self.all.clear
  end 
  
 
end