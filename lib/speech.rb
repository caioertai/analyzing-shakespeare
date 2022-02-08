class Speech
  def initialize(element)
    @element = element
  end

  def speaker
    @element
      .at("SPEAKER")
      .text.strip.split
      .map(&:capitalize)
      .join(" ")
      .gsub(/^all$/i, "ALL")
  end
end
