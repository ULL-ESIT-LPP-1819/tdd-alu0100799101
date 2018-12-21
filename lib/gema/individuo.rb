module Gema

	class Individuo
		include Comparable,Enumerable
		attr_reader :nombre,:peso,:talla,:edad ,:sexo,:actividad_fisica
	
	    def initialize (nombre, peso, talla, edad, sexo, cintura, cadera ,actividad_fisica)
		    
		    @nombre=nombre
		    @peso = peso
   		    @talla = talla
     		@edad = edad
     		@sexo = sexo
     		@cintura = cintura
     		@cadera = cadera
     		@actividad_fisica = actividad_fisica
		end
		
		def to_s
   			"(Nombre:#{@nombre},Peso:#{@peso},Talla:#{@talla},Edad:#{@edad},Sexo:#{@sexo})"
    		
		end
        def imc
    		@peso/(@talla * @talla)
    	end
    	def <=>(other)
        	imc <=> other.imc
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
		  
		  #Practica 10
		 
		   def pti #peso teorico ideal * 100 obtenerlo en cm 
				 ((@talla - 1.50)  * 100 * 0.75  + 50)
		   end
		   def geb #gasto energetico basal
			      if (sexo == 0) # mujer
			      	 
			      	 (10 * @peso) + (6.25 * @talla * 100) - (5 * @edad) - 161
			      
			      else 
	  		      	 (10 * @peso) + (6.25 * @talla * 100) - (5 * @edad) + 5
			      end
		   end
		   
		   def efecto_termogeno  #Efecto termogeno 
				geb * 0.10
		   end
		   def  gaf
			      if (actividad_fisica ==  ' Reposo ' )
			         actividad_fisica =  0.0
			      elsif (actividad_fisica ==  ' Actividad ligera ' )
			         actividad_fisica=  0.12
			      elsif (actividad_fisica ==  ' Actividad moderada ' )
			        actividad_fisica =  0.27
			      elsif (actividad_fisica ==  ' Actividad intensa ' )
			        actividad_fisica =  0.54
			      end
			      geb * @actividad_fisica
    	   end
    	   def geT
    	   	
    	   		geb + efecto_termogeno + gaf
    	   	
    	   end
	end	   
end
    
