
require "/home/ubuntu/workspace/LPP-Practica2/tdd-alu0100799101/gema/lib/gema/nutricion.rb"

describe Nutricion do
    
    before :each do
        @etiqueta1 = Nutricion.new("Zumo",1,0,0,0,4.7,4.2,0.5,0.01)
        @etiqueta2 = Nutricion.new("Arroz",0.7,0.2,0,0,77,0.5,7.2,0.01)
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
        it "Prueba MonoSaturadas" do
          expect(@etiqueta1.mono).to eq(0)
          expect(@etiqueta1.mono).to eq(0)
        end
        it "Prueba Polisaturadas"do
          expect(@etiqueta1.polin).to eq(0)
          expect(@etiqueta1.polin).to eq(0)
        end
        it"Prueba Hidratos" do
            expect(@etiqueta1.hidratos).to eq(4.7)
            expect(@etiqueta2.hidratos).to eq(77)
        end
         it"Pruebas Azucares" do
            expect(@etiqueta1.azucares).to eq(4.2)
            expect(@etiqueta2.azucares).to eq(0.5)
        end
        it"Pruebas Proteinas" do
            expect(@etiqueta1.proteinas).to eq(0.5)
            expect(@etiqueta2.proteinas).to eq(7.2)
        end
        it"Pruebas Sal" do
            expect(@etiqueta1.sal).to eq(0.01)
            expect(@etiqueta2.sal).to eq(0.01)
        end
        it "Prueba Cantidad Grasa en KJ" do
            expect(@etiqueta1.valorgrasakj).to eq(37)
            expect(@etiqueta2.valorgrasakj).to eq(0)
        end
    end
end
