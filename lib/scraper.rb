require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(html)
courses = doc.css(".tout__label.heading.heading--level-4")

courses.each do |course|
  puts course.text.strip
end

# doc = Nokogiri::HTML(open("http://flatironschool.com/"))
# p doc.css(".site-header__hero__headline").text.strip


# puts doc
