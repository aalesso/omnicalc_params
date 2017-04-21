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

  def payment_form
    # @present_value = params[:present_value].to_f
    # @basis_points = params[:basis_points].to_f
    # @number_of_years = params[:number_of_years].to_f
    # @payment = (@present_value*@basis_points)/(1-(1+@basis_points)**(-@number_of_years))
    render("calculations/payment_form.html.erb")
  end

  def payment_form_results
    @present_value = params[:present_value].to_f
    @basis_points = params[:basis_points].to_f
    @number_of_years = params[:number_of_years].to_f
    @payment = (@present_value*@basis_points)/(1-(1+@basis_points)**(-@number_of_years))
    render("calculations/payment_form_results.html.erb")
  end

end
