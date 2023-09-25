class RpsController < ApplicationController
  def rules
    render({ :template => "game_templates/rules_rps" })
  end

  RPS = ["rock", "paper", "scissors"]
  WINNING_RULES = {
    "rock" => "scissors",
    "scissors" => "paper",
    "paper" => "rock"
  }

  def rps_game(player_move, computer_move)
    if not RPS.include?(player_move)
      return "The player's move is not acceptable, try again"
    elsif player_move == computer_move
      return "We tied"
    elsif WINNING_RULES.fetch(player_move) == computer_move
      return "We won"
    else
      return "We lost"
    end
  end

  def move
    @player_move = params.fetch("move")
    @computer_move = RPS.sample
    @rps_outcome = rps_game(@player_move, @computer_move)

    render({ :template => "game_templates/play_rps" })
  end
end
