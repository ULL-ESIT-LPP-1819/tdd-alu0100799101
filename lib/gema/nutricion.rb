module Gema
# Clase que representa la etiqueta nutricional de un alimento.
# @author Adrián Herrera Darias
# @since 0.1.0
# @attr_reader [String] nombre representa el nombre del alimento
# @attr_reader [Numeric] grasa representa la cantidad de grasa del alimento.
# @attr_reader [Numeric] saturadas representa la cantidad de grasas saturadas del alimento
# @attr_reader [Numeric] mono representa la cantidad de monosaturadas del alimento.
# @attr_reader [Numeric] polin representa la cantidad polinsaturadas del alimento
# @attr_reader [Numeric] hidratos representa la cantidad de hidratos del alimento.
# @attr_reader [Numeric] azucares representa la cantidad de azucares del alimento
# @attr_reader [Numeric] polial representa la cantidad de polialcoholes del alimento
# @attr_reader [Numeric] almidon representa la cantidad de almidon del alimento
# @attr_reader [Numeric] fibra representa la cantidad fibra del alimento
# @attr_reader [Numeric] proteinas representa la cantidad de proteinas del alimento.
# @attr_reader [Numeric] sal representa la cantidad de sal del alimento.
  
class Nutricion 
    include Comparable
    attr_reader :nombre , :grasa ,:saturadas,:mono,:polin,:hidratos,:azucares,:polial,:almidon,:fibra,:proteinas,:sal
    
    def initialize(nombre,grasa,saturadas,mono,polin,hidratos,azucares,polial,almidon,fibra,proteinas,sal)
    @nombre = nombre
	@grasa = grasa
	@saturadas=saturadas
	@mono=mono
	@polin=polin
	@hidratos=hidratos
	@azucares=azucares
	@polial=polial
	@almidon=almidon
	@fibra=fibra
	@proteinas=proteinas
	@sal=sal
    end
    def valorgrasakj
        @grasa * 37
    end
    def valormonokj
        @mono * 37
    end
    def valorpolinkj
        @polin * 37
    end
    def valorhidratoskj
        @hidratos * 17
    end
    def valorpolialkj
        @polial * 10
    end
    def valoralmidonkj
        @almidon * 17
    end
    def valorfibrakj
        @fibra * 8
    end
    def valorproteinaskj
        @proteinas * 17
    end
    def valorsalkj
        @sal * 25
    end
    def valorenerkj
    
    valorgrasakj + valormonokj + valorpolinkj+ valorhidratoskj + valorpolialkj + valoralmidonkj + valorfibrakj + valorproteinaskj + valorsalkj
    end
    def valorgrasakcal
        @grasa * 9
    end
    def valormonokcal
        @mono * 9
    end
    def valorpolinkcal
        @polin * 9
    end
    def valorhidratoskcal
        @hidratos * 4
    end
    def valorpolialkcal
        @polial * 2.4
    end
    def valoralmidonkcal
        @almidon * 4
    end
    def valorfibrakcal
        @fibra * 2
    end
    def valorproteinaskcal
        @proteinas * 4
    end
    def valorsalkcal
        @sal * 6
    end
    def valorenerkcal
    
    valorgrasakcal + valormonokcal + valorpolinkcal+ valorhidratoskcal + valorpolialkcal + valoralmidonkcal + valorfibrakcal + valorproteinaskcal + valorsalkcal
    end
    
    def valorenerir
        valorenerkj / 8400 * 100 #usando kj
    end
    def grasair
        
        @grasa/70 * 100
        
    end
    def saturadasir
         @saturadas/20 * 100
    end 
    
    def hidratosir
         @hidratos/260 * 100
    end
    def azucaresir
         @azucares/90 * 100
    end
    def proteinasir
         @proteinas/50 * 100
    end
    def salir
         @sal/6 * 100
    end
    # Define que caracteriza las comparaciones entre los objetos alimentos
    # @return [Numeric] 1 si es mayor -1 si es menor y 0 si los objetos son iguales
    def <=>(other)
      @grasa <=> other.grasa
    end
    def to_s
      "( Nombre:#{@nombre},Grasa:#{@grasa},Saturadas:#{@saturadas},MonoSaturadas:#{@mono},Polisaturadas:#{@polin},Hidratos:#{@hidratos},Azucares:#{@azucares},Polialcohol:#{@polial},Almidon:#{@almidon},Fibra:#{@fibra},Proteinas:#{@proteinas},Sal:#{@sal})"
    end
end
end
