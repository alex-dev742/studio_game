class Player
  attr_accessor :name
  attr_reader :health

  def initialize(name, health = 100)
      @name = name.capitalize
      @health = health
  end 

  def drain
      @health -= 10
  end

  def boost
      @health += 10
  end

  def to_s = "I'm #{@name} with a health of #{@health} and a score of #{score}"

  def score
      @health + @name.length
  end
end