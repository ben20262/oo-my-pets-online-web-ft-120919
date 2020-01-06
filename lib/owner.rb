class Owner
  attr_reader :name, :species
  @@all = []

  def initialize (name)
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
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cats.all.select {|cat| cat.owner == self}
  end

  def dogs
    Dogs.all.select {|dog| dog.owner == self}
  end

  def buy_cat (cat_name)
    cat_name = Cat.new(cat_name, self)
  end

  def buy_dog (dog)
  end

  def walk_dogs
  end

  def feed_cats
  end

  def sell_pets
  end

  def list_pets
  end
end
