require_relative "../lib/speech"
require "nokogiri"

RSpec.describe Speech do
  let(:speech_xml) {
    <<-XML
      <SPEECH>
        <SPEAKER>Sheila</SPEAKER>
        <LINE>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Odio cu.</LINE>
        <LINE>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellen.</LINE>
      </SPEECH>
    XML
  }
  let(:speech_xml_element) {
    Nokogiri::XML.parse(speech_xml).at("SPEECH")
  }
  let(:speech) { described_class.new(speech_xml_element) }

  it "initializes with a parsed XML document" do
    speech
  end

  describe "#speaker" do
    it "returns the correct speaker" do
      expect(speech.speaker).to eq("Sheila")
    end
  end
end
