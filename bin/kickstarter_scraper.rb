require 'nokogeri'

#read the HTML file 
html = File.read('fixtures/kickstarter.html') 

kickstarter = Nokogiri::HTML(html)