module Gema

	class Individuo
	include Comparable
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
		def to_s
   			"(Nombre:#{@nombre},Peso:#{@peso},Talla:#{@talla},Edad:#{@edad},Sexo:#{@sexo})"
    		
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
    	def<=>(other)
    		imc <=> other.imc
    	end
    	def calcintura
    		( @cintura[0] + @cintura[1] ) / 2
        end
	    
	    def calcadera
	        ( @cadera[0] + @cadera[1] ) / 2
	    end
	   
	   def rcc
	    calcintura/calcadera
	   end
   
		  def rccclasif
			        if (sexo == 0)
				       case rcc
				          when 0.72...0.77
				          "Mujeres Riesgo Bajo"
				          when 0.78..0.82
				          "Mujeres Riesgo Moderado"
				          else
				          "Mujeres Riesgo Alto o Muy Alto"
			       end
			     
		    		else 
				        case rcc 
				           when 0.83...0.88
				            "Hombres Riesgo Bajo"
				            when 0.88...0.95
				             "Hombres Riesgo Moderado"
				             when 0.95 .. 1.01
				              "Hombres Riesgo Alto"
				             else
				              "Hombres Riesgo Muy Alto"
				        end
		    		end
		  end
	end
end
    
