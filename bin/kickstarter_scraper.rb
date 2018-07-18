require 'nokogeri'
require 'pry'

#read the HTML file 
html = File.read('fixtures/kickstarter.html') 

kickstarter = Nokogiri::HTML(html)

# projects: kickstarter.css("li.project.grid_4")
projects = []
projects << kickstarter.css("li.project grid_4")
projects.each |p| do
  project = {}
  project[title] = kickstarter.css("h2.bbcard_name strong a").text
end  

puts kickstarter.css("h2.bbcard_name strong a").text


