require_relative '../lib/hello.rb'

describe "the hello function" do
  it "says hello" do
    expect(hello).to eq("hello FDP")
  end
end