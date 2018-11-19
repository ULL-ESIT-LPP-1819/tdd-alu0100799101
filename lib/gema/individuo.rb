module Gema

	class Individuo
	attr_reader :nombre,:peso,:talla,:edad ,:sexo
	
		def initialize (peso, talla, edad, sexo, cintura, cadera)
		    @peso = peso
   		    @talla = talla
     		@edad = edad
     		@sexo = sexo
     		@cintura = cintura
     		@cadera = cadera
    	end
	end
end
    
