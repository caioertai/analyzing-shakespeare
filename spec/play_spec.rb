require_relative "../lib/play"

RSpec.describe Play do
  let(:play) { Play.new("spec/support/play.xml") }

  it "initializes with a parsed XML document" do
    play
  end

  context "#speeches" do
    it "returns speeches" do
      play.speeches
    end
  end
end
