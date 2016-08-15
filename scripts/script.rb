require './person.rb'
require './dog.rb'

me = Person.new('Francisco', 1987)
sparky = Dog.new(me, 'Sparky')

me.greet
sparky.bark

puts me.age