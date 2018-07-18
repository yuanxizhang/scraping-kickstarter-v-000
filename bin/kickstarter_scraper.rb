require 'nokogeri'
require 'pry'

# projects: kickstarter.css("li.project.grid_4")
# title: project.css("h2.bbcard_name strong a").text
# image_link: project.css("div.project-thumbnail a img").attribute("src").value
# description: project.css("p.bbcard_blurb").text
# location: project.css("ul.project-meta span.location-name").text
# percent_funded: project.css("ul.project-stats li.first.funded strong").text.gsub("%","").to_i

def create_project_hash
  #read the HTML file 
  html = File.read('fixtures/kickstarter.html') 
  kickstarter = Nokogiri::HTML(html)
  
  projects = {}
  kickstarter.css("li.project grid_4").each do |project| 
    title = project.css("h2.bbcard_name strong a").text
    projects[title.to_sym] = {
      :image_link => project.css("div.project-thumbnail a img").attribute("src").value,
      :description => project.css("p.bbcardblurb").text
      :location =>  project.css("ul.project-meta span.location-name").text
      :percent_funded => 
    }
  end
  projects
end 


  
  project[:image_link] = project.css("div.project-thumbnail a img").attribute("src").value
  project[:description] = project.css("p.bbcardblurb").text
  project[:location] = project.css("ul.project-meta span.location-name").text
  project[:percent_funded] = project.css("ul.project-stats li.first.funded strong").text.gsub("%", "").to_i
  k_project = _
end

binding.pry


