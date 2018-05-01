class Game
  attr_accessor :value1, :value2

  def initialize(value1,value2)
     @value1 = value1
     @value2 = value2
  end




  def rock_paper_scissors

    if (@value1 == "rock" && @value2 == "paper") || (@value2 == "rock" && @value1 == "paper")
      p "Paper Wins"

    elsif (@value1 == "paper" && @value2 == "scissors") || (@value2 == "paper" && @value1 == "scissors")
      p "Scissors Wins"

    elsif (@value1 == "rock" && @value2 == "scissors") || (@value2 == "rock" && @value1 == "scissors")
      p "Rock Wins"
    else
      p "Draw"
    end

  end

  def rock_paper_scissors_player_win

    if (@value1 == "rock" && @value2 == "paper") || (@value1 == "paper" && @value2 == "scissors") || (@value1 == "scissors" &&  @value2 == "rock")

      p "Player2 Wins"

    elsif  (@value2 == "rock" && @value1 == "paper")  || (@value2 == "paper" && @value1 == "scissors") || (@value2 == "scissors"&& @value1 == "rock")

      p "Player1 Wins" 

    else
      p "Draw"
    end

  end



end
