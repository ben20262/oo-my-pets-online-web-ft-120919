class Owner
  attr_reader :name, :species
  @@all = []

  def initialize (name)
    @name = name
    @species = "I am a human."
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end
end
