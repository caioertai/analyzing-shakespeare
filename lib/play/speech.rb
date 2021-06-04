class Play::Speech
  def initialize(element)
    @element = element
  end

  def speaker
    @element.at("SPEAKER").text.strip
  end
end
