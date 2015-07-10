require 'open-uri'
require 'nokogiri'
# PROCEDURAL SCRAPE
# bbc_cuisineHTML = open("http://www.bbc.co.uk/food/cuisines")
# bbc_cuisineNoko = Nokogiri::HTML(bbc_cuisineHTML)

# cuisines = bbc_cuisineNoko.css("span.cuisine-title h3").text

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
