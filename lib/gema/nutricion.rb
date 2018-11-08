class Nutricion 
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
    def valorhidratoskj
        @hidratos * 17
    end
    def valorproteinaskj
        @proteinas * 17
    end
    def valorenerkj
    
    valorgrasakj + valorhidratoskj + valorproteinaskj
    
    end
end
