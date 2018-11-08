
require "/home/ubuntu/workspace/LPP-Practica2/tdd-alu0100799101/gema/lib/gema/nutricion.rb"

describe Nutricion do
    
    before :each do
        @etiqueta1 = Nutricion.new("Zumo",1,0,0,0,4.7,4.2,0,0,0,0.5,0.01)
        @etiqueta2 = Nutricion.new("Arroz",0.7,0.2,0,0,77,0.5,0,0,0,7.2,0.01)
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
        it"Pruebas Polialcohol" do
            expect(@etiqueta1.polial).to eq(0)
            expect(@etiqueta2.polial).to eq(0)
        end
        it"Pruebas Almidon" do
            expect(@etiqueta1.almidon).to eq(0)
            expect(@etiqueta2.almidon).to eq(0)
        end
        it"Pruebas Fibra" do
            expect(@etiqueta1.fibra).to eq(0)
            expect(@etiqueta2.fibra).to eq(0)
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
            expect(@etiqueta2.valorgrasakj).to eq(25.9)
        end
         it "Prueba Cantidad Grasa MonoSaturadas en KJ" do
            expect(@etiqueta1.valormonokj).to eq(0)
            expect(@etiqueta2.valormonokj).to eq(0)
        end
         it "Prueba Cantidad Polisaturadas en KJ" do
            expect(@etiqueta1.valorpolinkj).to eq(0)
            expect(@etiqueta2.valorpolinkj).to eq(0)
        end
        it "Prueba Cantidad Hidratos en KJ" do
            expect(@etiqueta1.valorhidratoskj).to eq(79.9)
            expect(@etiqueta2.valorhidratoskj).to eq(1309)
        end
         it "Prueba Cantidad Polialcohol en KJ" do
            expect(@etiqueta1.valorpolialkj).to eq(0)
            expect(@etiqueta2.valorpolialkj).to eq(0)
        end
         it "Prueba Cantidad Almidon en KJ" do
            expect(@etiqueta1.valoralmidonkj).to eq(0)
            expect(@etiqueta2.valoralmidonkj).to eq(0)
        end
          it "Prueba Cantidad Fibra en KJ" do
            expect(@etiqueta1.valorfibrakj).to eq(0)
            expect(@etiqueta2.valorfibrakj).to eq(0)
        end
        it "Prueba Cantidad Proteinas en KJ" do
            expect(@etiqueta1.valorproteinaskj).to eq(8.5)
            expect(@etiqueta2.valorproteinaskj).to eq(122.4)
        end
        it "Prueba Cantidad sal en KJ" do
            expect(@etiqueta1.valorsalkj).to eq(0.25)
            expect(@etiqueta2.valorsalkj).to eq(0.25)
        end
        it "Prueba Valor Energetico en KJ" do
            expect(@etiqueta1.valorenerkj).to eq(125.65)
            expect(@etiqueta2.valorenerkj).to eq(1457.5500000000002) 
        end
            it "Prueba Cantidad Grasa en Kcal" do
            expect(@etiqueta1.valorgrasakcal).to eq(37)
            expect(@etiqueta2.valorgrasakcal).to eq(25.9)
        end
         it "Prueba Cantidad Grasa MonoSaturadas en Kcal" do
            expect(@etiqueta1.valormonokcal).to eq(0)
            expect(@etiqueta2.valormonokcal).to eq(0)
        end
         it "Prueba Cantidad Polisaturadas en Kcal" do
            expect(@etiqueta1.valorpolinkj).to eq(0)
            expect(@etiqueta2.valorpolinkcal).to eq(0)
        end
        it "Prueba Cantidad Hidratos en Kcal" do
            expect(@etiqueta1.valorhidratoskcal).to eq(79.9)
            expect(@etiqueta2.valorhidratoskcal).to eq(1309)
        end
         it "Prueba Cantidad Polialcohol en Kcal" do
            expect(@etiqueta1.valorpolialkcal).to eq(0)
            expect(@etiqueta2.valorpolialkcal).to eq(0)
        end
         it "Prueba Cantidad Almidon en Kcal" do
            expect(@etiqueta1.valoralmidonkcal).to eq(0)
            expect(@etiqueta2.valoralmidonkcal).to eq(0)
        end
          it "Prueba Cantidad Fibra en Kcal" do
            expect(@etiqueta1.valorfibrakcal).to eq(0)
            expect(@etiqueta2.valorfibrakcal).to eq(0)
        end
        it "Prueba Cantidad Proteinas en Kcal" do
            expect(@etiqueta1.valorproteinaskcal).to eq(8.5)
            expect(@etiqueta2.valorproteinaskcal).to eq(122.4)
        end
        it "Prueba Cantidad sal en Kcal" do
            expect(@etiqueta1.valorsalkcal).to eq(0.25)
            expect(@etiqueta2.valorsalkcal).to eq(0.25)
        end
        it "Prueba Valor Energetico en Kcal" do
            expect(@etiqueta1.valorenerkcal).to eq(125.65)
            expect(@etiqueta2.valorenerkcal).to eq(1457.5500000000002) 
        end
    end
end
