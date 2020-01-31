require 'pry'
require_relative 'lib/project.rb'
require_relative 'lib/backer.rb'

p1 = Project.new("Warm Wrists")
p2 = Project.new("Glow in the Dark Peas")
p3 = Project.new("Dog Cafe")

b1 = Backer.new("Anam")
b2 = Backer.new("Caleb")
b3 = Backer.new("Raul")
b4 = Backer.new("Stephen")

binding.pry
0