class CalculationsController < ApplicationController

  def calculate
  #  @number = params[:id].fact
    @number = (1..params[:number].to_i).reduce(:*) || 1
    render @number
  end



  # def params
  #   @number = params.require(:data)
  # end

  # def resp_body
  #   {
  #     factorial: @number.fact
  #   }
  # end



  # attr_reader :number
  # private :number

  # def initialize(number)
  #   @number = number
  # end

  # def get_result!
  #   @number = @number.fact
  #   return @number
  # end

  private
  
  def fact
    (1..self).reduce(:*) || 1
  end

end