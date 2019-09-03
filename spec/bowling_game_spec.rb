require_relative '../bowling_game.rb'

RSpec.describe BowlingGame do

  it "exists" do 
    expect(described_class).to equal(BowlingGame)
  end

	describe "#score" do

		before(:each) do 
			@game = BowlingGame.new
		end
		
		it "returns 0 when there are no frames bowled" do 
			frames = []
			expect(@game.get_score(frames)).to eq(0)
		end

		it "adds up the score of one frame" do 
			frames=[
				["1", "2"]
			]
			expect(@game.get_score(frames)).to eq("3")
		end
	end
end 


