module Gema
    
        class Paciente < Individuo
            
                def initialize(nombre,peso,talla,edad,sexo,cintura,cadera,actividad_fisica)
                
                    super(nombre,peso,talla,edad,sexo,cintura,cadera,actividad_fisica)
                end
        end
end