# Write your code here.
require "pry"

katz_deli = []

def line katz_deli
    if katz_deli.length == 0 then puts "The line is currently empty."
    else message = "The line is currently:"
        katz_deli.each.with_index(1) { |customer, place| message = message + " #{place}. #{customer}"}
        puts message
    end
end

def take_a_number katz_deli, customer
    katz_deli.push(customer)
    puts "Welcome, #{customer}. You are number #{katz_deli.index(customer) + 1} in line."
end

def now_serving katz_deli
    if katz_deli.length == 0 then puts "There is nobody waiting to be served!"
    else puts "Currently serving #{katz_deli[0]}." 
        katz_deli.shift
    end
end


