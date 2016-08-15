
def fizz_buzz(number)
	
    result = ''

	if number%3 == 0
      result += 'fizz'
     end

     if number%5 == 0
     	result += 'buzz'
     end

     return nil if result.empty?
     result
     	
end