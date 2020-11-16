require 'json'

class GamesController < ApplicationController
  def new
    @letters = [*('a'..'z')].sample(10)
  end

  def score
    @input = params[:word]
    @letters = params[:all_letters]
    @message = ""
    if @letters.include? @input
      @message = "It works"
    else
      @message = "It doesn't work"

    end
  end


  def letters
  end

  def check_word
    @input = URI.encode
    request_api(
      "https://wagon-dictionary.herokuapp.com/#{@input}"
    )
  end

end
