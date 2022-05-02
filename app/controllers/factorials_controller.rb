require 'byebug'
class FactorialsController < ApplicationController

  def calculate
    # check if number is integer and positive
    if params[:number] !~ /\D/
      n = params[:number].to_i
      if n < 46
        i = 1
        while i < params[:number].to_i
          n = i * n
          i += 1
        end
        render json: { "result": n}  
      else
        error(406, "The value requested is too big")
      end
    else
      error(400, "The value is negative or not an integer")
    end
     
  end

end