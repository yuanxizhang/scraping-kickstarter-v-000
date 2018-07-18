require 'nokogeri'
require 'pry'

#read the HTML file 
html = File.read('fixtures/kickstarter.html') 

kickstarter = Nokogiri::HTML(html)

# projects: kickstarter.css("li.project.grid_4")
project_hash = {}
project_hash[:projects] = kickstarter.css("li.project grid_4")
project_hash.each |k, v| do
  project = {}
  # title: project.css("h2.bbcard_name strong a").text
  k = kickstarter.css("h2.bbcard_name strong a").text
  v = project
  project[]

puts kickstarter.css("h2.bbcard_name strong a").text


