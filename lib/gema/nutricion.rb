module Gema
    class Nutricion 
        include Comparable,Enumerable
        attr_reader :nombre , :grasa ,:saturadas,:mono,:polin,:hidratos,:azucares,:polial,:almidon,:fibra,:proteinas,:sal,:porciones
        
        def initialize(nombre,grasa,saturadas,mono,polin,hidratos,azucares,polial,almidon,fibra,proteinas,sal,porciones)
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
    	@porciones=porciones
        end
         def <=>(other)
           @grasa <=> other.grasa
         end
        def + (other)
            valorenerkcal + other.valorenerkcal
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
        def to_s
          "( Nombre:#{@nombre},Grasa:#{@grasa},Saturadas:#{@saturadas},MonoSaturadas:#{@mono},Polisaturadas:#{@polin},Hidratos:#{@hidratos},Azucares:#{@azucares},Polialcohol:#{@polial},Almidon:#{@almidon},Fibra:#{@fibra},Proteinas:#{@proteinas},Sal:#{@sal})"
        end
      
    end
end
