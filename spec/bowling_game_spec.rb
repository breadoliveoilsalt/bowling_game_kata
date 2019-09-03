require_relative '../bowling_game.rb'

RSpec.describe BowlingGame do

  it "exists" do 
    expect(described_class).to equal(BowlingGame)
  end

	describe "#get_score" do

		before(:each) do 
			@game = BowlingGame.new
		end
		
		it "returns 0 when there are no frames bowled" do 
			frames = []
			expect(@game.get_score(frames)).to eq("0")
		end

		it "adds up the score of one frame without a strike or spare" do 
			frames = [
				["1", "2"]
			]
			expect(@game.get_score(frames)).to eq("3")
		end

		it "adds up the score of two frames without a strike or spare" do
			frames = [
				["1", "2"],
				["3", "7"]
			]
			expect(@game.get_score(frames)).to eq("13")
		end
		
		it "adds up the score of ten frames without a strike or spare" do
			frames = [
				["1", "2"],
				["2", "7"],
				["3", "5"],
				["4", "7"],
				["5", "7"],
				["6", "7"],
				["7", "7"],
				["8", "7"],
				["9", "4"],
				["10", "0"]
			]
			expect(@game.get_score(frames)).to eq("108")
		end
	
	end
end 


