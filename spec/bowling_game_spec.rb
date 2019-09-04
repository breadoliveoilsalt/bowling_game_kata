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
				["3", "5"]
			]
			expect(@game.get_score(frames)).to eq("11")
		end
		
		it "adds up the score of ten frames without a strike or spare" do
			frames = [
				["1", "1"],
				["2", "1"],
				["3", "1"],
				["4", "1"],
				["5", "1"],
				["6", "1"],
				["7", "1"],
				["8", "1"],
				["9", "0"],
				["1", "1", "1"]
			]
			expect(@game.get_score(frames)).to eq("56")
		end

		it "adds up the score of ten frames and takes into account spares except for last frame" do
			frames = [
				["1", "1"],
				["2", "/"],
				["3", "1"],	
				["4", "1"],
				["5", "/"],
				["6", "1"],
				["7", "1"],
				["8", "1"],
				["9", "0"],
				["1", "1", "1"]
			]
			expect(@game.get_score(frames)).to eq("76")
		end

		it "takes into account multiple spares in a row, except for last frame" do
			frames = [
				["1", "/"],
				["2", "/"],
				["3", "/"],	
				["4", "1"],
				["5", "1"],
				["6", "1"],
				["7", "1"],
				["8", "1"],
				["9", "0"],
				["1", "1", "1"]
			]
			expect(@game.get_score(frames)).to eq("86")
		end

		it "takes into account strikes, except for last frame, no multiple strikes in a row, and no spares" do
			frames = [
				["X", "-"],
				["2", "0"],
				["3", "0"],	
				["X", "-"],
				["5", "1"],
				["6", "1"],
				["7", "1"],
				["8", "1"],
				["9", "0"],
				["1", "1", "1"]
			]
			expect(@game.get_score(frames)).to eq("86")
		end
	
	end
end 


