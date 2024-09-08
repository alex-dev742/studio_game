require_relative "lib/studio_game/game"
require_relative "lib/studio_game/player"

players_file = File.join(__dir__, "players.csv")

game = Game.new("Winner Takes All")

game.load_players(ARGV.shift || players_file)

loop do
  print "\nHow many game rounds? ('quit' to exit) "
  answer = gets.chomp.downcase

  case answer
  when /^\d+$/
    game.play(answer.to_i)
  when "quit", "exit"
    game.print_stats
    break
  else
    puts "Please enter a number or 'quit'"
  end
end

game.save_high_scores



