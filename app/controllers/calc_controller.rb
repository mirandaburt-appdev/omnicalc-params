class CalcController < ApplicationController
    def flex_square
        # The parameters look like this: {"the_num" => "42"}
        #Rails puts the hash in a varaible called params 
        # params = {"the_num" => "42"}
        
        @num = params.fetch("the_num").to_i
        @the_answer = @num * @num
        render("calc_templates/flexible_square.html.erb")
    end
    def flex_root
        @users_num = params.fetch("whatever").to_f
        @the_root = @users_num ** 0.5
        
        render("calc_templates/flexible_root.html.erb")
    end
    
    def square_results
        @the_input_number = params.fetch("user_number").to_f
        @the_answer = @the_input_number * @the_input_number
        render("calc_templates/square_results.html.erb")
    end

def square_form
    render("calc_templates/square_form.html.erb")
end

def flex_payment
    @interest = params.fetch("basis_points").to_f
    @years = params.fetch("num_of_years").to_i
    @money = params.fetch("present_value").to_f

    @interest_rate = @interest/100
       
    @monthly_payment = ((@interest_rate/12)*(@money))/(1-(1+(@interest_rate)/12)**(@years*-12))
    

    render("calc_templates/flexible_payment.html.erb")
end

def flex_random
    @first = params.fetch("small_num").to_i
    @second = params.fetch("big_num").to_i
    @output = rand(@first...@second)
    
    render("calc_templates/flexible_random.html.erb")
end

def square_root_results
    @user_number = params.fetch("user_number").to_f
    @output = @user_number ** (0.5)
    render("calc_templates/square_root_results.html.erb")
end

def square_root_form

    render("calc_templates/square_root_form.html.erb")
end
def payment_results
    render("calc_templates/payment_results.html.erb")
end

def payment_new
    render("calc_templates/payment_new.html.erb")
end
def random_form
   
    render("calc_templates/random_form.html.erb")
end
def random_results
        @minimum = params.fetch("user_min").to_f
       @maximum = params.fetch("user_max").to_f
       @result = rand(@minimum..@maximum)
    render("calc_templates/random_results.html.erb")
end
end