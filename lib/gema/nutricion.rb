class Nutricion 
    attr_reader :nombre , :grasa ,:saturadas
    
    def initialize(nombre,grasa,saturadas)
    @nombre = nombre
	@grasa = grasa
	@saturadas=saturadas
    end
end
