
i = 0

while i < 10
	puts i
	i += 1
end

puts 'Until'

j = 10
until j < 0
 puts j
 j -= 1
end

paises = %w[España México Colombia]

paises.each do |pais|
	puts pais
end	