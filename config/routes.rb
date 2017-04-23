Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

get("/flexible/square/:num",{:controller => "calculations", :action => "flex_square_5"})
get("/flexible/square_root/:num",{:controller => "calculations", :action => "flex_square_root"})

get("/square/new",{:controller => "calculations", :action => "square_form"})
get("/square/results",{:controller => "calculations", :action => "square_results"})

get("/square_root/new",{:controller => "calculations", :action => "square_root_form"})
get("/square_root/results",{:controller => "calculations", :action => "square_root_results"})

get("/flexible/payment/new",{:controller => "calculations", :action => "payment_form"})
get("/flexible/payment/results",{:controller => "calculations", :action => "payment_form_results"})

end
