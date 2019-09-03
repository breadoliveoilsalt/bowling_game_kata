require_relative '../bowling.rb'

RSpec.describe Bowling do

  it "exists" do 
    expect(described_class).to equal(Bowling)
  end

	describe "#score" do

		it "returns 0 when there are no frames bowled" do 
			
			game = Bowling.new
			frames = []
			expect(game(frames)).to eq(0)
		end
	
	end
end 


