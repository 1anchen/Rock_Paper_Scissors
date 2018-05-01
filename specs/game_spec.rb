require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/game'
require('pry')

class TestGame < Minitest::Test

  def setup
    @game1 = Game.new("rock", "scissors")
    @game2 = Game.new("rock", "paper")
    @game3 = Game.new("paper", "scissors")
    @game4 = Game.new("rock", "rock")
  end


  def test_rock_vs_scissors__return_rock_wins
    answer = "Rock Wins"
    result = @game1.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_rock_vs_paper__return_paper_wins
    answer = "Paper Wins"
    result = @game2.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_paper_vs_scissors__return_scissors_wins
    answer = "Scissors Wins"
    result = @game3.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_rock_vs_rock__return_draw
    answer = "Draw"
    result = @game4.rock_paper_scissors
    assert_equal(answer, result)
  end

  def test_player1_rock_vs_player2_scissors__return_player1_win
    answer = "Player1 Wins"
    result = @game1.rock_paper_scissors_player_win
    assert_equal(answer, result)
  end

  def test_player1_rock_vs_player2_paper__return_player2_win
    answer = "Player2 Wins"
    result = @game2.rock_paper_scissors_player_win
    assert_equal(answer, result)
  end

  def test_rock_vs_rock__return_draw
    answer = "Draw"
    result = @game4.rock_paper_scissors_player_win
    assert_equal(answer, result)
  end
end
