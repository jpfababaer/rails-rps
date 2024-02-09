
class ScissorsController < ApplicationController

  def erb
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "rock"
      @outcome = "lost"
    else 
      @outcome = "won"
    end
    
    render({:template => "game_templates/play_scissors"})
  end


end
