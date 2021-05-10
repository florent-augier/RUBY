require 'dotenv'# Appelle la gem Dotenv
require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'rest-client'
require 'pry'

Dotenv.load('../.env') 



page = Nokogiri::HTML(RestClient.get("https://www.ffss.fr/web/ffss/576-trouver-un-club.php?action=search&validateForm=ok&page=1&Reg=117&DPT=&TypeAsso=&searchKeywords=&Acti%5B%5D=20&Acti%5B%5D=21&Acti%5B%5D=22#ResultS"))  

results = page.css('div#res.results')

ul = results.css('ul')

li = ul.css('li')

ville = li.css('.ville')

adresse = li.css('.org')

cities = []

address = []

cities = ville.search('span').map &:text

address = adresse.search('span').map &:text

address.map {|s| s.gsub!(/[\n\t]/, '')}

address.reject! {|c| c.empty?}

address.map {|d| d.gsub!(/(?=[h][t]{2}[p])/, " ")}

puts address


#PAGE_URL = "http://ruby.bastardsbook.com/files/hello-webpage.html"