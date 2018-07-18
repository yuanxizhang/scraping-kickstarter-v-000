require 'nokogeri'
require 'pry'

#read the HTML file 
html = File.read('fixtures/kickstarter.html') 

kickstarter = Nokogiri::HTML(html)

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image_link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text

project_hash = {}
project_hash[:projects] = kickstarter.css("li.project grid_4")
project_hash[:projects].each |k, v| do
  project = {}
  
  k = kickstarter.css("h2.bbcard_name strong a").text
  v = project
  
  project[:image_link] = kickstarter.css("div.project-thumbnail a img").attribute("src").value
  project[:description] = kickstarter.css("p.bbcardblurb").text
  project[:location] = kickstarter.css("span.location-name").text
  project[:percent_funded] = kickstarter.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
  k_project = _
end

binding.pry


