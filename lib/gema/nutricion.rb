class Nutricion 
    attr_reader :nombre , :grasa ,:saturadas,:mono,:hidratos,:azucares,:proteinas,:sal
    
    def initialize(nombre,grasa,saturadas,mono,hidratos,azucares,proteinas,sal)
    @nombre = nombre
	@grasa = grasa
	@saturadas=saturadas
	@mono=mono
	@hidratos=hidratos
	@azucares=azucares
	@proteinas=proteinas
	@sal=sal
    end
end
