require "nokogiri"

class Play
  def initialize(file_path)
    @file_path = file_path
  end

  def speeches
    document.search("SPEECH")
  end

  private

  def document
    @document ||= Nokogiri::XML.parse(open(@file_path))
  end
end
