require 'pry'

puts "amount year one?"
year_one_principal = gets.chomp.to_f

puts "amount year two?"
year_two_principal = gets.chomp.to_f

puts "amount year three?"
year_three_principal = gets.chomp.to_f

puts "amount year four?"
year_four_principal = gets.chomp.to_f

puts "rate?"
rate = (gets.chomp.to_f / 1200)

puts "years?"
number_of_payments = (gets.chomp.to_f * 12)

principal = ((year_one_principal / 2) * ((1 + rate) ** 48)) + ((year_one_principal / 2) * ((1 + rate) ** 42)) + ((year_two_principal / 2) * ((1 + rate) ** 36)) + ((year_two_principal / 2) * ((1 + rate) ** 30)) + ((year_three_principal / 2) * ((1 + rate) ** 24)) + ((year_three_principal / 2) * ((1 + rate) ** 18)) + ((year_four_principal / 2) * ((1 + rate) ** 12)) + ((year_four_principal / 2) * ((1 + rate) ** 6))

payment_amount = (principal * rate * ((1 + rate) ** number_of_payments)) / (((1 + rate) ** number_of_payments) - 1)

puts payment_amount
