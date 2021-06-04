require_relative "../lib/play/speech"

RSpec.describe Play::Speech do
  let(:speech_xml_doc) {
    <<-XML
      <SPEECH>
        <SPEAKER>Sheila</SPEAKER>
        <LINE>Lorem ipsum dolor sit amet consectetur adipisicing, elit. Odio cu.</LINE>
        <LINE>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Repellen.</LINE>
      </SPEECH>
    XML
  }

  it "initializes with a parsed XML document" do
    described_class.new(speech_xml_doc)
  end
end
