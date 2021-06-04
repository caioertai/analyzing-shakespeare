require_relative "../lib/play"

RSpec.describe Play do
  let(:play) { Play.new("spec/support/play.xml") }

  it "initializes with a parsed XML document" do
    play
  end

  context "#speeches" do
    it "returns the correct amount of speeches" do
      expect(play.speeches.count).to eq(10)
    end

    it "returns instances of speech" do
      expect(play.speeches).to all(be_a(Speech))
    end
  end
end
