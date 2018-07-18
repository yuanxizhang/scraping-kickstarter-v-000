require 'nokogeri'
require 'pry'

#read the HTML file 
html = File.read('fixtures/kickstarter.html') 

kickstarter = Nokogiri::HTML(html)

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
project_hash = {}
project_hash[:projects] = kickstarter.css("li.project grid_4")
project_hash[:projects].each |k, v| do
  project = {}
  
  k = kickstarter.css("h2.bbcard_name strong a").text
  v = project
  project[:image_link] = kickstarter.css("div.project-thumbnail a img")
  project[:description] = kickstarter.css("div.project-thumbnail a img")
  project[:location] = kickstarter.css("div.project-thumbnail a img")
  project[:percent_funded] = kickstarter.css("div.project-thumbnail a img").to_i
end

puts kickstarter.css("h2.bbcard_name strong a").text


