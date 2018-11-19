module Gema

	class Individuo
	attr_reader :nombre,:peso,:talla,:edad ,:sexo
	
		def initialize (nombre, peso, talla, edad, sexo, cintura, cadera)
		    
		    @nombre=nombre
		    @peso = peso
   		    @talla = talla
     		@edad = edad
     		@sexo = sexo
     		@cintura = cintura
     		@cadera = cadera
    	end
	end
end
    
