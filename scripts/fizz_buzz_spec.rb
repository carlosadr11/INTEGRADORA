require 'minitest/autorun'
require './fizz_buzz'

describe 'la función fizz_buzz' do
	it 'regresar fizz si es múltiplo de 3' do
		fizz_buzz(3).must_equal('fizz')
end
	it 'regresar buzz si es múltiplo de 5' do
		fizz_buzz(5).must_equal('buzz')
end
	it 'regresar buzz si es múltiplo de 5 y de 3' do
		fizz_buzz(15).must_equal('fizzbuzz')
end

it 'regresar nil si no es multiplo de 5 o 3' do 
	fizz_buzz(2).must_be_nil
	
end
end