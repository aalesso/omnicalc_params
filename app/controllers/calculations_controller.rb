class CalculationsController < ApplicationController


  def flex_square_5
    @user_number = params["num"].to_f
    @square = @user_number ** 2
    render("calculations/flex_square_5.html.erb")
    # <<<<<<< HEAD
  end

  def flex_square_root
    @user_number0 = params["num"].to_f
    @square_root = @user_number0 ** 0.5
    render("calculations/flex_square_root.html.erb")
  end
  # =======

  def flex_square_root_8
    @user_number4 = params["num"].to_f
    @square_root_flex = @user_number4 ** 0.5
    @square_root_flex = @square_root_flex.round(2)

    render("calculations/flex_square_root_8.html.erb")
  end

  def min_max
    @min = params["min"].to_f
    @max = params["max"].to_f
    @rand_between =  @min + (@max-@min)*rand()
    render("calculations/min_max.html.erb")
    # >>>>>>> origin/master
  end

  def payment_flex
    @present_value = params["present_value"].to_f
    @basis_points = params["basis_points"].to_f
    @number_of_years = params["number_of_years"].to_f
    @months = @number_of_years.to_f*12
    @apr = @basis_points*0.0001/12
    @payment_flex0 = (@present_value*@apr)/(1-(1+@apr)**(-@months))
    # @payment_flex0 = (@present_value*@basis_points*0.0001)/(1-(1+@basis_points*0.0001)**(-@number_of_years))/12.round
    @payment_flex = @payment_flex0.round(2)
    render("calculations/payment_flex.html.erb")
  end

  def square_form
    render("calculations/square_form.html.erb")
  end
  def square_results
    @user_number2 = params[:user_number].to_f
    @square_results = @user_number2 **2
    render("calculations/square_results.html.erb")
  end


  def square_root_results
    @user_number3 = params[:user_number].to_f
    @square_root_results0 = @user_number3 **0.5
    @square_root_results = @square_root_results0.round(3)
    render("calculations/square_root_results.html.erb")
  end



  # def payment_form
    # @present_value = params[:present_value].to_f
    # @basis_points = params[:basis_points].to_f
    # @number_of_years = params[:number_of_years].to_f
    # @payment_flex0 = (@present_value*@basis_points*0.0001)/(1-(1+@basis_points*0.0001)**(-@number_of_years))/12.round
    # @payment_flex = @payment_flex0.round(2)
    # render("calculations/payment_form.html.erb")
    # end

  def payment_form_results
    @present_value = params[:present_value].to_f
    @number_of_years = params[:number_of_years].to_f
    @months = @number_of_years.to_f*12
    @apr0 = params[:apr].to_f
    @apr = @apr0*0.01/12
    @payment0 = (@present_value*@apr)/(1-(1+@apr)**(-@months))
    @payment = @payment0.round(2)
    render("calculations/payment_form_results.html.erb")

  end
  def number_to_currency(number, options = {})
    delegate_number_helper_method(:number_to_currency, number, options)
  end
  def number_to_percentage(number, options = {})
    delegate_number_helper_method(:number_to_percentage, number, options)
  end

  def random_form
    render("calculations/random_form.html.erb")
  end

  def random_results
    @min=params[:min].to_f
    @max=params[:max].to_f
    @rand_between =  @min + (@max-@min)*rand()
    render("calculations/random_results.html.erb")
  end
end
