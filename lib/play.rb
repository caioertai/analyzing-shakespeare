require "nokogiri"
require_relative "speech"

class Play
  def initialize(file_path)
    @file_path = file_path
  end

  def speeches
    document.search("SPEECH").map { |el| Speech.new(el) }
  end

  private

  def document
    @document ||= Nokogiri::XML.parse(open(@file_path))
  end
end
