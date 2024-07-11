class GamesController < ApplicationController
  def homepage
    render ({:template => "game_templates/homepage"})
  end

  def rock
    @comp_move = ["rock","paper","scissors"].sample

    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else 
      @outcome = "won"
    end
    
    render ({:template => "game_templates/rock"})
  end

  def paper
    @comp_move = ["rock","paper","scissors"].sample
    if @comp_move == "rock"
      @outcome = "won"
    elsif @comp_move == "paper"
      @outcome = "tied"
    else 
      @outcome = "lost"
    end    
    render ({:template => "game_templates/paper"})
  end

  def scissors
    @comp_move = ["rock","paper","scissors"].sample
    if @comp_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper"
      @outcome = "won"
    else 
      @outcome = "tied"
    end
    render ({:template => "game_templates/scissors"})
  end

end
