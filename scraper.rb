require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://horses.nl/feed/"))

doc.css("item").each do |row|
	puts row.css('title').text;
end
