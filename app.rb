require "nokogiri"
require "open-uri"
require "pry-byebug"

xml_url = "https://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"
doc = Nokogiri::XML.parse(open(xml_url))
binding.pry

puts ""
