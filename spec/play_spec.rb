require_relative "../lib/play"

RSpec.describe Play do
  it "initializes with a parsed XML document" do
    Play.new("spec/support/macbeth.xml")
  end
end
