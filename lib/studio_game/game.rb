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
          else
              player.boost
              puts "#{player.name} got boosted"
          end

          treasure = TreasureTrove.random_treasure

          player.found_treasure(treasure.name, treasure.points)
      end
      puts "\nAfter playing:"
      puts @players
    end
  end

  def print_stats
    puts "\n Game Stats:"
    puts "-" * 60
    puts sorted_players
    @players.each do |player|
      puts "\n#{player.name}'s treasure point totals:"
      player.found_treasures.each do |name, points|
        puts "#{name}: #{points}"
      end
      puts "total: #{player.points}"
    end

    puts "\nHigh Scores:"
    sorted_players.each do |player|
      name = player.name.ljust(40, ".")
      points = player.score.round.to_s.rjust(5)
      puts "#{name}#{points}"
end
  end

  def sorted_players
    @players.sort_by { |player| player.score }.reverse
  end
end