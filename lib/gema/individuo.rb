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
        def imc
    		@peso/(@talla * @talla)
    	end
    	
    	def grasa
        	(1.2 * imc) + (0.23 * @edad) - (10.8 * @sexo ) - 5.4 
    	end
    	
    	def oms
    		case imc
        	when 0..18.5
        	"Bajo Peso,Delgado"
        	when 18.6...24.9
        	"Adecuado,Aceptable"
        	when 25..29.9
        	"Sobrepeso,Sobrepeso"
        	when 30..34.9
        	"Obesidad Grado 1,Obesidad"
        	else
        	"Obesidad Grado 2,Obesidad"
    		end
    	end
	end
end
    
