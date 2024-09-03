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

player_1 = Player.new("finn", 60)

number_rolled = rand(1..6)

case number_rolled
when 1..2
    player_1.drain
    puts "#{player_1.name} got drained"
when 3..4
    puts "#{player_1.name} got skipped"
else
    player_1.boost
    puts "#{player_1.name} got boosted"
end


# player_1.boost

# player_2 = Player.new("lucy", 90)
# player_2.drain

# player_3 = Player.new("jase")
# player_3.boost
# player_3.boost

# player_4 = Player.new("alex", 125)
# player_4.drain
# player_4.boost
