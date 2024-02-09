
#Here we define the Class :controller and its specific method as is described inside of the "get" call (from routes.rb)

#Inherit from the Parent Class "Application Controller" that is developed by the Rails on Ruby developers. These parent classes have many methods we can just use.

#NOTE: make sure the name of the Class inheriting from "ApplicationController" is the same name as the .rb file. (i.e. IF rock_controller.rb = RockController OR IF homepage_controller.rb = HomepageController.)
class RockController < ApplicationController

  #If we connect this to the "get" call in routes.rb, it just renders a text "howdy".
  def giraffe 
    render({ :plain => "howdy"})
  end

  #How to render erb methods: use the Key :template with a Value of a String containing the name of the .erb file we want to use
  #Create this erb files inside of a NEW folder "game_templates" which is INSIDE of the original "views" folder.
  def erb
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample
  
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else 
      @outcome = "won"
    end

    #Essentially, this is the same line as doing erb(:template) back in Sinatra.
    render({:template => "game_templates/play_rock"})
  end


end
