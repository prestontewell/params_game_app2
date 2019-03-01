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

  def guess_action
    # get user input
    user_input = 5
  end

end
