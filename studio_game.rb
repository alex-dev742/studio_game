class Player
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

    def to_s = "I'm #{@name} with a health of #{@health}"
      
end


player_2 = Player.new("lucy", 90)
puts player_2

player_3 = Player.new("jase")
puts player_3

player_4 = Player.new("alex", 125)
puts player_4
