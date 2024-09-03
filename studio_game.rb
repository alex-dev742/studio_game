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
player_2 = Player.new("lucy", 90)
player_3 = Player.new("jase")
player_4 = Player.new("alex", 125)

players = [player_1, player_2, player_3, player_4,]

puts "Before playing:"
puts players


players.each do |player|
    number_rolled = rand(1..6)
    case number_rolled
    when 1..2
        player.drain
        puts "#{player.name} got drained"
    when 3..4
        puts "#{player.name} got skipped"
    else
        player_1.boost
        puts "#{player.name} got boosted"
    end
    
end


puts "\nAfter playing:"
puts players


