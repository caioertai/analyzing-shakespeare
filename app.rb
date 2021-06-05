require_relative "lib/play"
require "open-uri"

play_url = "https://www.ibiblio.org/xml/examples/shakespeare/macbeth.xml"
play = Play.new(play_url)
play
  .speakers_count
  .sort_by { |_, count| -count }
  .to_h
  .each do |speaker, count|
    puts "#{count} #{speaker}"
  end
