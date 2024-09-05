require_relative "treasure_trove"

class Game
  attr_reader :players, :title

  def initialize(title)
      @title = title
      @players = []
  end

  def add_player(player)
      @players.push(player)
  end

  def roll_die
      rand(1..6)
  end

  def play(rounds = 1)

    puts "\nLet's play #{@title}!"

    puts "\nThe following treasures can be found:"
    TreasureTrove::TREASURES.each do |treasure|
        puts "A #{treasure.name} is worth #{treasure.points} points"
    end

    puts "Before playing:"
    puts @players

    1.upto(rounds) do |round|
      puts "\nRound #{round}:"
      @players.each do |player|
          number_rolled = roll_die
          case number_rolled
          when 1..2
              player.drain
              puts "#{player.name} got drained"
          when 3..4
              puts "#{player.name} got skipped"
              puts "Finn found a key worth 80 points"
          else
              player.boost
              puts "#{player.name} got boosted"
              puts "Finn found a key worth 80 points"
          end

          treasure = TreasureTrove.random_treasure
          puts "#{player.name} found a #{treasure.name} worth #{treasure.points} points"
      end
      puts "\nAfter playing:"
      puts @players
    end
  end
end