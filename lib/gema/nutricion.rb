class Nutricion 
    attr_reader :nombre , :grasa ,:saturadas,:mono,:polin,:hidratos,:azucares,:proteinas,:sal
    
    def initialize(nombre,grasa,saturadas,mono,polin,hidratos,azucares,proteinas,sal)
    @nombre = nombre
	@grasa = grasa
	@saturadas=saturadas
	@mono=mono
	@polin=polin
	@hidratos=hidratos
	@azucares=azucares
	@proteinas=proteinas
	@sal=sal
    end
end
