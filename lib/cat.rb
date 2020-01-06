class Cat
  attr_accessor :owner, :mood
  attr_reader :name
  @@all = []

  def initialize (name, owner)
    @name = name
    @owner = Owner.all.select {|person| person.name == owner}[0]
    puts @owner
    @mood = "nervous"
  end

  def self.all
    @@all
  end
end
