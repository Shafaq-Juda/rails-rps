class GameController < ApplicationController
  def home 
    render({:template=>"game_templates/home"})
  end

  def play
    @our_move = params.fetch("play")
    # @our_move = request.path.sub(/\A\//,"")

    moves = ["rock", "paper", "scissors"]
    @comp_move = moves.sample
    
    if @comp_move == @our_move
      @outcome = "tied"
    elsif @comp_move == "rock" && @our_move == "paper"
      @outcome = "won"
    elsif @comp_move == "rock" && @our_move == "scissors"
      @outcome = "lost"
    elsif @comp_move == "paper" && @our_move == "rock"
      @outcome = "lost"
    elsif @comp_move == "paper" && @our_move == "scissors"
      @outcome = "won"
    elsif @comp_move == "scissors" && @our_move == "rock"
      @outcome = "won"
    elsif @comp_move == "scissors" && @our_move == "paper"
      @outcome = "lost"
    end

    render({:template=>"game_templates/play"})
  end

end
