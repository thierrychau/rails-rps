class RpsController < ApplicationController
  def rules
    render({ :template => "game_templates/rules_rps" })
  end

  def rock
    @user_move = "rock"
    @random_move = ["rock", "paper", "scissors"].sample

    render({ :template => "game_templates/play_rps" })
  end
end
