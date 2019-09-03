class BowlingGame

	def get_score(frames)
	
		score = 0 
	
		frames.each do |frame|
			score += frame[0].to_i
			score += frame[1].to_i
		end
		
		score.to_s
		
	end

end
