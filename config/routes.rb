Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/flexible/square/:the_num", { :controller => "calc", :action => "flex_square" })
  
  get("/flexible/square_root/:whatever", { :controller => "calc", :action => "flex_root" })
  
  get("/flexible/random/:small_num/:big_num", { :controller => "calc", :action => "flex_random" })
  
  get("/flexible/payment/:basis_points/:num_of_years/:present_value", { :controller => "calc", :action => "flex_payment" })
  
  get("/square/results", { :controller => "calc", :action => "square_form_results" })
  
  get("/square/new", { :controller => "calc", :action => "blank_square_form"})
  
  get("/square_root/results", { :controller => "calc", :action => "square_root_results" })
  
  get("/square_root/new", { :controller => "calc", :action => "square_root_form"})
  
  get("/payment/results", { :controller => "calc", :action => "payment_results"})
  
  get("/payment/new", { :controller => "calc", :action => "payment_new"})
end
