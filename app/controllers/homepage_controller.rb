
class HomepageController < ApplicationController

  def erb
    render({:template => "game_templates/homepage"})
  end


end
