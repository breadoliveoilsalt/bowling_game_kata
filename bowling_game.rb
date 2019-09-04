class BowlingGame

	def get_score(frames)
	
		score = 0 
	
		(0...frames.length).each do |frame|
			pins_knocked_down_on_throw = frames[frame]
			pins_knocked_down_on_throw.each do |pins|
				score += pins.to_i
			end
		end

		score.to_s

	end	
#		if frame == 9
#				score += 
#			
#			if frame == 9
#
#			
#			throws = frames[frame]
#			if throws[1] == "/"
#				score += 10 + frames[frame + 1][0].to_i
#			else
#				score += frames[frame][0].to_i
#				score += frames[frame][1].to_i
#				score += frames[frame][2].to_i
#			end
##		end
#		
#		score.to_s
		
#		end

end
