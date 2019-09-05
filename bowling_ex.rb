#!/usr/local/bin/ruby -w

require_relative './bowling_game.rb'

puts "hey there"
frames = []
game = BowlingGame.new({frames: frames})
puts game
