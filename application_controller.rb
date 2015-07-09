require 'bundler'
Bundler.require
require_relative "./models/restaurant.rb"
class ApplicationController < Sinatra::Base

  get '/' do
    erb :home
  end
  get '/restaurant' do
    erb :restaurant
  end
  post '/restaurant' do
  end
  get '/food-types' do
    erb :food_types
  end
  post '/food-types' do
  end
  get '/food-specs' do
    erb :food_spec
  end
  post '/food-spes' do
  end

end