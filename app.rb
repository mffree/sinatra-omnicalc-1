require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @inputs = params
  @result_name = "Square"
  @result = params.fetch("number").to_f ** 2
  erb(:results)
end


get("/square_root/new") do

  erb(...)
end

get("/random/new") do

  erb(...)
end

get("/payment/new") do

  erb()
end
