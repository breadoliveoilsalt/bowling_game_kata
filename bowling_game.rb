class BowlingGame

	# Note assumptions I am now making about the 
	# data structure for frames, especially when there is a strike
	
	def get_score(frames)
	
		score = 0 
	
		(0...frames.length).each do |frame|
			pins_knocked_down_on_throws = frames[frame]
			if pins_knocked_down_on_throws[0] == "X"
				next_frame_first_throw = frames[frame+1][0]
				next_frame_second_throw = frames[frame+1][1]
				score += 10 + next_frame_first_throw.to_i + next_frame_second_throw.to_i	
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
