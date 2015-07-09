require 'bundler'
Bundler.require
require_relative './models/restaurant.rb'
require_relative './models/foodtype.rb'
require 'pry'
# require 'nokogiri'
# require 'open-uri'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :home
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
    class ScrapeBBC

      attr_accessor :HTML, :Noko
      def initialize(url)
        @HTML = open(url)
        @Noko = Nokogiri::HTML(@HTML)
      end

      def get_cuisines
        cuisines = @Noko.css("span").collect do |x|
          x.text
        end
        cuisines.pop
        cuisines.shift
        cuisines.shift
        cuisines.shift
        cuisines.shift
        cuisines
      end
    end

    @jank = ScrapeBBC.new("http://www.bbc.co.uk/food/cuisines")
    erb :foodtype
  end
  
  get '/displaychoice' do
    erb :displaychoice
  end
end