require "minitest/autorun"

require_relative "../../lib/studio_game/player"

class PlayerTest < Minitest::Test

  def test_has_a_capitalized_name
    player = Player.new("finn", 60)
  
    assert_equal "Finn", player.name
  end

  def test_has_initial_health
    player = Player.new("finn", 60)

    assert_equal 60, player.health
  end

  def test_computes_score_as_sum_of_health_and_points
    player = Player.new("finn", 60)

    assert_equal 60, player.score
  end

  def test_has_a_string_representation
    player = Player.new("finn", 60)

    assert_equal "I'm Finn with health = 60, points = 0, and score = 60", player.to_s
  end

  def test_player_can_be_boosted_by_15
    player = Player.new("finn", 60)

    player.boost
    
    assert_equal 75, player.health
  end

  def test_player_can_be_drained_by_10
    player = Player.new("finn", 60)

    player.drain
    
    assert_equal 50, player.health
  end

end