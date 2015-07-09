require 'open-uri'
require 'nokogiri'

bbc_cuisineHTML = open("http://www.bbc.co.uk/food/cuisines")
bbc_cuisineNoko = Nokogiri::HTML(bbc_cuisineHTML)

cuisines = bbc_cuisineNoko.css("span.cuisine-title h3").text