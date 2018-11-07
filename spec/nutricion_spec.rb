
describe Nutricion do
    
    before:each do
        @etiqueta1 = Nutricion.new("Zumo")
        
    end
    
    describe"Pruebas practica 6" do
        it "Prueba nombre" do
            expect(@etiqueta1.nombre).to eq('Zumo')
        end
    end
end