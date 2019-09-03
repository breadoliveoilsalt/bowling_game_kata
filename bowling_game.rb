class BowlingGame

	def get_score(frames)
	
		if frames == []
			0
		else 
			throw1 = frames[0][0].to_i
			throw2 = frames[0][1].to_i
			score = throw1 + throw2
			score.to_s
		end

	end

end
