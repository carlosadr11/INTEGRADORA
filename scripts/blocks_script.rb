

countries = %w[México España Colombia]

countries.each do |country|#permite recorrer los elementos
  message = "#{country} tiene #{country.length} letras"
  cre = 'ese es tu total de letras'
  puts message + cre
end

def read_file(file_name, &block)
	puts 'Abrir archivo:' + file_name
	block.call(file_name)
	puts 'Cerrar archivo'
end

my_block = Proc.new do |file|#para definir un blocke es necesario crear una variable
	puts 'Lectura del archivo'+ file.upcase
end

read_file('/home/file.txt', &my_block)# en el paramtro se anvia tambien como un ampersand
