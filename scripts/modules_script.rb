
module Comunication

  CONSTANT = 'V2.0.1'

  def talk
  	puts 'Mensaje'

  end

  #module Input

  #end

  class Message

  end

end

 class Men
 	include Comunication
 	# extend Communication

 end

 class Dog
 	include Comunication

 	def talk
 		puts 'Woof!'
 		
 	end

 end

 me = Men.new
 me.talk

 puts Comunication::CONSTANT

 message = Comunication::Message.new

 # con = Comunication.new

 sparky = Dog.new
 sparky.talk

