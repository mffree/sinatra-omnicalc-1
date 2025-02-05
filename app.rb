require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

# Square
get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @inputs = params
  @result_name = "Square"
  @result = params.fetch("number").to_f ** 2
  erb(:square_results)
end

# Square root
get("/square_root/new") do
  erb(:square_root)
end

get("/square_root/results") do
  @inputs = params
  @result_name = "Square Root"
  @result = (params.fetch("number").to_f ** 0.5).round(4)
  erb(:square_root_results)
end

# Random
get("/random/new") do
  erb(:random)
end

get("/random/results") do
  @inputs = params
  @result_name = "Random Number"
  min_input = params.fetch("minimum").to_f
  max_input = params.fetch("maximum").to_f
  @result = rand(min_input..max_input)
  erb(:random_results)
end


# Random
get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @inputs = params # apr, years, principal
  apr_monthly = @inputs.fetch("apr").to_f / 100 / 12
  months = @inputs.fetch("years").to_i * 12

  numer = apr_monthly * @inputs[:principal].to_f
  denom = 1 - (1 + apr_monthly) ** (months * (-1))
  @result = numer / denom

  @result_name = "Payment"

  erb(:payment_results)
end
