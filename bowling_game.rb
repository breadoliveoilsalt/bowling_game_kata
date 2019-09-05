require 'pry'

class BowlingGame

#	attr_writer :score
#	attr_reader :frames

#	def initialize(attributes)
#		@frames = attributes[:frames]
#	end

	def get_score(frames, score=0)

		(0...frames.length).each do |frame|
			pins_knocked_down_on_throws = frames[frame]
			if pins_knocked_down_on_throws[0] == "X"
				next_frame_first_throw = frames[frame+1][0]
				next_frame_second_throw = frames[frame+1][1]
				if next_frame_second_throw == "/"
					score += 20
				else 
					score += 10 + next_frame_first_throw.to_i + next_frame_second_throw.to_i	
				end
			elsif pins_knocked_down_on_throws[1] == "/"
				next_frame_first_throw = frames[frame+1][0]
				score += 10 + next_frame_first_throw.to_i	
			else
				pins_knocked_down_on_throws.each do |pins|
					score += pins.to_i
				end
			end
		end

		score.to_s

	end	

end
