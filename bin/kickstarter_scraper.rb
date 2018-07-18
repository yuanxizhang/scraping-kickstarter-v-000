require 'nokogeri'
require 'pry'

#read the HTML file 
html = File.read('fixtures/kickstarter.html') 

kickstarter = Nokogiri::HTML(html)
projects = []
projects << kickstarter.css(".project grid_4").text

puts projects[0 ... 4]