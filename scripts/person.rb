require 'date'

class Person
	attr_accessor :name, :birth_year

	def initialize(name, birth_year)
		@name = name
		@birth_year = birth_year
	end

	def greet
		puts "Hola soy #{@name}"
	end

	def age
		today = Date.today
		today.year - @birth_year

	end	

end