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
    @square_results = params[:user_number].to_f
    render("calculations/square_results.html.erb")
  end





end
