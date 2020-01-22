class Owner
  attr_accessor
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
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
  
  def cats 
    Cat.all.select { |cat| cat.owner == self }
  end 
  
  def dogs 
    Dog.all.select { |dog| dog.owner == self }
  end 
  
  def buy_cat
    Cat.new(name, owner)
  end 
  
 
end