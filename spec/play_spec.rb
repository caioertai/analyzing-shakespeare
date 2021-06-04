require_relative "../lib/play"

RSpec.describe Play do
  let(:play) { Play.new("spec/support/play.xml") }

  it "initializes with a parsed XML document" do
    play
  end

  context "#speakers_count" do
    it "returns the correct speakers count" do
      expected = {
        "Bob" => 3,
        "Erik" => 3,
        "Sheila" => 3,
        "ALL" => 1,
      }

      expect(play.speakers_count).to eq(expected)
    end
  end

  context "#speakers" do
    it "returns all speakers names" do
      expect(play.speakers).to include("Bob")
      expect(play.speakers).to include("Erik")
      expect(play.speakers).to include("Sheila")
      expect(play.speakers).to include("ALL")
    end
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
