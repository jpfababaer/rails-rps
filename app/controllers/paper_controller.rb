
class PaperController < ApplicationController

  def erb
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample
  
    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else 
      @outcome = "won"
    end
    
    render({:template => "game_templates/play_paper"})
  end


end
