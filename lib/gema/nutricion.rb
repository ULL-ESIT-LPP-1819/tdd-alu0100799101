class Nutricion 
    attr_reader :nombre , :grasa ,:saturadas,:hidratos,:azucares
    
    def initialize(nombre,grasa,saturadas,hidratos,azucares)
    @nombre = nombre
	@grasa = grasa
	@saturadas=saturadas
	@hidratos=hidratos
	@azucares=azucares
    end
end
