require "nokogiri"
require "open-uri"
require "ostruct"
require_relative "speech"

class Play
  def initialize(file_path)
    @file_path = file_path
  end

  def speeches
    @speeches ||= document.search("SPEECH").map { |el| Speech.new(el) }
  end

  def speakers
    speeches.map(&:speaker)
  end

  def speakers_count
    speeches.each_with_object(Hash.new(0)) { |speech, object|
      object[speech.speaker] += 1
    }
  end

  private

  def document
    @document ||= Nokogiri::XML.parse(open(@file_path))
  end
end
