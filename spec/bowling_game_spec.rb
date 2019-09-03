require_relative '../bowling_game.rb'

RSpec.describe BowlingGame do

  it "exists" do 
    expect(described_class).to equal(BowlingGame)
  end

	describe "#score" do

		it "returns 0 when there are no frames bowled" do 
			game = BowlingGame.new
			frames = []
			expect(game.score(frames)).to eq(0)
		end
	
	end
end 


