

  class Owner

    @@all = []
    attr_reader :name, :species

    def initialize(name)
      @name = name
      @species = "human"
      @@all << self
    end

    def self.all
      @@all
    end

    def say_species
      "I am a human."
    end

    def self.count
      self.all.count
    end

    def self.reset_all
      self.all.clear
    end

    def cats
      Cat.all.select {|cat| cat.owner == self}
    end

    def dogs
      Dog.all.select {|dog| dog.owner == self}
    end

    def buy_cat(name)
      Cat.new(name, self)
    end

    def buy_dog(name)
      Dog.new(name, self)
    end

    def walk_dog
      @mood = "happy"
    end
  end