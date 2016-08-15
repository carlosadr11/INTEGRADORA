def mi_metodo(argumento = 'default')
	p argumento
	p.argumento.class
	p argumento.upcase

end	

#mi_metodo('Texto')
def otro_metodo(argumento, *argumentos)
   p argumento
   p argumentos
end	
otro_metodo('Texto', 20, true, 2.5)

def login(usuario: usuario, clave: password, **argumentos)
     puts 'Usuario: ' + usuario
     puts 'clave: ' + clave
     puts 'Argumentos: ' + argumentos.to_s
end

login(usuario: 'carlos', clave: 'secreta', llave: 'valor', otra_llave:'otro valor')