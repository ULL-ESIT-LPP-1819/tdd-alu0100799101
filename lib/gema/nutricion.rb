class Nutricion 
    attr_reader :nombre , :grasa ,:saturadas,:hidratos,:azucares,:proteinas
    
    def initialize(nombre,grasa,saturadas,hidratos,azucares,proteinas)
    @nombre = nombre
	@grasa = grasa
	@saturadas=saturadas
	@hidratos=hidratos
	@azucares=azucares
	@proteinas=proteinas
    end
end
