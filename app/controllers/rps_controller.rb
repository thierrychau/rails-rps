class RpsController < ApplicationController
  def rules
    render({ :template => "game_templates/rules_rps" })
  end

  RPS = ["rock", "paper", "scissors"]

  def rps_game(user_rps, computer_rps)
    if user_rps == computer_rps
      return "tied"
    elsif (user_rps == "rock" && computer_rps == "scissors") || (user_rps == "scissors" && computer_rps == "paper") || (user_rps == "paper" && computer_rps == "rock")
      return "won"
    else
      return "lost"
    end
  end

  def rock
    @user_move = "rock"
    @computer_rps = RPS.sample
    @rps_outcome = rps_game(@user_move, @computer_rps)

    render({ :template => "game_templates/play_rps" })
  end

  def paper
    @user_move = "paper"
    @computer_rps = RPS.sample
    @rps_outcome = rps_game(@user_move, @computer_rps)

    render({ :template => "game_templates/play_rps" })
  end

  def scissors
    @user_move = "scissors"
    @computer_rps = RPS.sample
    @rps_outcome = rps_game(@user_move, @computer_rps)

    render({ :template => "game_templates/play_rps" })
  end
end
