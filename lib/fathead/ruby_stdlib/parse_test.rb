require 'nokogiri'

doc = File.open("download/ruby_2_4_0_stdlib/packages.html") { |f| Nokogiri::HTML(f) }
items = doc.css("dl")
items.each do |name, desc|
    hash = Hash.new
    hash[item.text.split.first] = desc.first.text.sub(/\s*[\w']+\s+/, "")
  end

hash
