require './lib/junglebeat'
require 'pry'
puts "What noises do you want to play? "
beats = gets.chomp
jb = Junglebeat.new

jb.append(beats)
jb.play
