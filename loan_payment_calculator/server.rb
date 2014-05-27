require 'sinatra'
require 'pry'


def payment_calculator(year_one_principal, year_two_principal, year_three_principal, year_four_principal, annual_interest_rate, years)
  rate = (annual_interest_rate.to_f / 1200)
  number_of_payments = (years.to_f * 12)
  principal = (year_one_principal.to_f / 2) * (1 + rate) ** 48 + (year_one_principal.to_f / 2) * (1 + rate) ** 42 + (year_two_principal.to_f / 2) * (1 + rate) ** 36 + (year_two_principal.to_f / 2) * (1 + rate) ** 30 + (year_three_principal.to_f / 2) * (1 + rate) ** 24 + (year_three_principal.to_f / 2) * (1 + rate) ** 18 + (year_four_principal.to_f / 2) * (1 + rate) ** 12 + (year_four_principal.to_f / 2) * (1 + rate) ** 6
  payment_amount = ((principal * rate * ((1 + rate) ** number_of_payments)) / (((1 + rate) ** number_of_payments) - 1)).round(2)
  payment_amount
end

def load_loan_data
 loan_data_list = []
  CSV.foreach('loan_data.csv', headers: true, header_converters: :symbol) do |row|
    loan_data_list << row.to_hash
  end
end

get '/' do
  erb :index
end

post '/results' do
  input = ["#{params[:year_one_principal]}", "#{params[:year_two_principal]}", "#{params[:year_three_principal]}", "#{params[:year_four_principal]}", "#{params[:annual_interest_rate]}", "#{params[:years]}"]
  File.open('loan_data.csv', 'a') do |file|
    file << input
  end
  redirect '/your_result'
end

get '/your_result' do
  input_list = load_loan_data.last
  @input = input_list.last
  erb :result_page
end
