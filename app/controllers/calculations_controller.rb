class CalculationsController < ApplicationController

  def square_form
    render("calculations/square_form.html.erb")
  end

  def flex_square_5
    @user_number = params["num"].to_f
    @square = @user_number ** 2


    render("calculations/flex_square_5.html.erb")
  end


  def square_results
    @user_number2 = params[:user_number].to_f
    @square_results = @user_number2 **2
    render("calculations/square_results.html.erb")
  end


    def square_root_results
      @user_number3 = params[:user_number].to_f
      @square_root_results = @user_number3 **0.5
      render("calculations/square_root_results.html.erb")
    end




end
