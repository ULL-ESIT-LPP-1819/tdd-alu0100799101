
require "/home/ubuntu/workspace/LPP-Practica2/tdd-alu0100799101/gema/lib/gema/nutricion.rb"

describe Nutricion do
    
    before :each do
        @etiqueta1 = Nutricion.new("Zumo",1,0,4.7)
        @etiqueta2 = Nutricion.new("Arroz",0.7,0.2,77)
    end
    
    describe"Pruebas practica 6" do
        it "Prueba nombre" do
            expect(@etiqueta1.nombre).to eq('Zumo')
             expect(@etiqueta2.nombre).to eq('Arroz')
        end
        it"Prueba Grasa" do
            expect(@etiqueta1.grasa).to eq(1)
             expect(@etiqueta2.grasa).to eq(0.7)    
        end    
        it"Prueba Grasa Saturada" do
            expect(@etiqueta1.saturadas).to eq(0)
            expect(@etiqueta2.saturadas).to eq(0.2)
        end
        it"Prueba Hidratos" do
            expect(@etiqueta1.hidratos).to eq(4.7)
            expect(@etiqueta2.hidratos).to eq(77)
        end
    end
end
