require 'bundler'
Bundler.require

require_relative './models/restaurant.rb'
require_relative './models/foodtype.rb'
require_relative './models/caesar.rb'
require 'pry'
# require 'nokogiri'
# require 'open-uri'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :home
  end

  post '/food-specs' do
    @foodchoice = params[:foodchoice].split(" ")
    @foodchoice = @foodchoice[rand(@foodchoice.length)]
    erb :displaychoice
  end
  
  get '/food-specs' do
    erb :food_spec
  end
  
  post '/restaurant' do
    @foodchoice = params[:foodchoice].split(" ")
    @foodchoice = @foodchoice[rand(@foodchoice.length)]
    erb :displaychoice
  end
  
  get '/restaurant' do
    erb :restaurant
  end
  
  get '/foodtype' do
#     binding.pry

    @jank = ScrapeBBC.new("http://www.bbc.co.uk/food/cuisines")
    erb :foodtype
  end
  
  get '/displaychoice' do
    erb :displaychoice
  end
  
  post '/cipher' do
    @cipherable = caesar_encrypt(params[:k].to_i, params[:cipherable])
    erb :cipher
  end
  
  post '/displayfoodtype' do
    @jank = ScrapeBBC.new("http://www.bbc.co.uk/food/cuisines")
    @foodtype = params
    erb :displayfoodtype
  end
end