class Player
  attr_accessor :name
  attr_reader :health, :found_treasures

  def initialize(name, health = 100)
      @name = name.capitalize
      @health = health
      @found_treasures = Hash.new(0)
  end

  def drain
      @health -= 10
  end

  def boost
      @health += 15
  end

  def to_s
    "I'm #{@name} with health = #{@health}, points = #{points}, and score = #{score}"
  end

  def score
      @health + points
  end

  def found_treasure(name, points)
    @found_treasures[name] += points
  end

  def points
    @found_treasures.values.sum
  end

end