class Api::PagesController < ApplicationController
  def query_action
    @name = params[:name]
    @job = params[:job]
    @message = "test"
    render 'query_view.json.jbuilder'
  end

  def name_action
    @name = params[:name].upcase
    if @name[0] == "a" || @name[0] == "A"
      @message = 'Congratulations!'
    elsif
      @message = "That's too bad. 'A' names are awesome!"
    end
    render 'name_view.json.jbuilder'
  end

  def game_action
    # get user input
    user_input = params[:guess].to_i
    answer = 58
    if user_input > answer
      @message = "Too high, man."
    elsif  user_input < answer
      @message = "Too low, man."
    elsif user_input == answer
      @message = "That's like, your opinion, man. But also correct."
    end
    render 'game_view.json.jbuilder'
  end

  def segment_action
    @local = params[:place]
    render 'segment_view.json.jbuilder'
  end


end
