class Nutricion 
    attr_reader :nombre , :grasa ,:saturadas,:hidratos,:azucares,:proteinas,:sal
    
    def initialize(nombre,grasa,saturadas,hidratos,azucares,proteinas,sal)
    @nombre = nombre
	@grasa = grasa
	@saturadas=saturadas
	@hidratos=hidratos
	@azucares=azucares
	@proteinas=proteinas
	@sal=sal
    end
end
