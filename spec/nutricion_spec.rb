require 'spec_helper'

RSpec.describe Gema::Nutricion do
    
    before :each do
        @etiqueta1 = Gema::Nutricion.new("Zumo",1,0,0,0,4.7,4.2,0,0,0,0.5,0.01,"1 vaso")
        @etiqueta2 = Gema::Nutricion.new("Arroz",0.7,0.2,0,0,77,0.5,0,0,0,7.2,0.01,"1 taza")
        @etiqueta3 = Gema::Nutricion.new("Mermelada",0,0,0,0,17,4.2,5,0,6.4,0.5,0,"1 cucharada")
        @etiqueta4 = Gema::Nutricion.new("Inventada",8,5,10,0.6,20,5,1,4,11,2,5,"1") 
    
    
    
    end
    
    describe"Pruebas practica 6" do
        it "Prueba nombre" do
            expect(@etiqueta1.nombre).to eq('Zumo')
            expect(@etiqueta2.nombre).to eq('Arroz')
            expect(@etiqueta3.nombre).to eq('Mermelada')
            expect(@etiqueta4.nombre).to eq('Inventada')
              
              
        end
        it"Prueba Grasa" do
            expect(@etiqueta1.grasa).to eq(1)
             expect(@etiqueta2.grasa).to eq(0.7)
             expect(@etiqueta4.grasa).to eq(8)
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
            expect(@etiqueta3.valorgrasakj).to eq(0)
            expect(@etiqueta4.valorgrasakj).to eq(296)
        end
         it "Prueba Cantidad Grasa MonoSaturadas en KJ" do
            expect(@etiqueta1.valormonokj).to eq(0)
            expect(@etiqueta2.valormonokj).to eq(0)
            expect(@etiqueta3.valormonokj).to eq(0)
            expect(@etiqueta4.valormonokj).to eq(370)
        end
         it "Prueba Cantidad Polisaturadas en KJ" do
            expect(@etiqueta1.valorpolinkj).to eq(0)
            expect(@etiqueta2.valorpolinkj).to eq(0)
            expect(@etiqueta3.valorpolinkj).to eq(0)
            expect(@etiqueta4.valorpolinkj).to eq(22.2)
        end
        it "Prueba Cantidad Hidratos en KJ" do
            expect(@etiqueta1.valorhidratoskj).to eq(79.9)
            expect(@etiqueta2.valorhidratoskj).to eq(1309)
            expect(@etiqueta3.valorhidratoskj).to eq(289)
            expect(@etiqueta4.valorhidratoskj).to eq(340)
        end
         it "Prueba Cantidad Polialcohol en KJ" do
            expect(@etiqueta1.valorpolialkj).to eq(0)
            expect(@etiqueta2.valorpolialkj).to eq(0)
            expect(@etiqueta3.valorpolialkj).to eq(50)
            expect(@etiqueta4.valorpolialkj).to eq(10)
        end
         it "Prueba Cantidad Almidon en KJ" do
            expect(@etiqueta1.valoralmidonkj).to eq(0)
            expect(@etiqueta2.valoralmidonkj).to eq(0)
            expect(@etiqueta3.valoralmidonkj).to eq(0)
            expect(@etiqueta4.valoralmidonkj).to eq(68)
        end
          it "Prueba Cantidad Fibra en KJ" do
            expect(@etiqueta1.valorfibrakj).to eq(0)
            expect(@etiqueta2.valorfibrakj).to eq(0)
            expect(@etiqueta3.valorfibrakj).to eq(51.2)
            expect(@etiqueta4.valorfibrakj).to eq(88)
        end
        it "Prueba Cantidad Proteinas en KJ" do
            expect(@etiqueta1.valorproteinaskj).to eq(8.5)
            expect(@etiqueta2.valorproteinaskj).to eq(122.4)
            expect(@etiqueta3.valorproteinaskj).to eq(8.5)
            expect(@etiqueta4.valorproteinaskj).to eq(34)
        end
        it "Prueba Cantidad sal en KJ" do
            expect(@etiqueta1.valorsalkj).to eq(0.25)
            expect(@etiqueta2.valorsalkj).to eq(0.25)
            expect(@etiqueta3.valorsalkj).to eq(0)
            expect(@etiqueta4.valorsalkj).to eq(125)
        end
        it "Prueba Valor Energetico en KJ" do
            expect(@etiqueta1.valorenerkj).to eq(125.65)
            expect(@etiqueta2.valorenerkj).to eq(1457.5500000000002) 
             expect(@etiqueta3.valorenerkj).to eq(398.7)
            expect(@etiqueta4.valorenerkj).to eq(1353.2) 
        end
            it "Prueba Cantidad Grasa en Kcal" do
            expect(@etiqueta1.valorgrasakcal).to eq(9)
            expect(@etiqueta2.valorgrasakcal).to eq(6.3)
            expect(@etiqueta3.valorgrasakcal).to eq(0)
            expect(@etiqueta4.valorgrasakcal).to eq(72)
        end
         it "Prueba Cantidad Grasa MonoSaturadas en Kcal" do
            expect(@etiqueta1.valormonokcal).to eq(0)
            expect(@etiqueta2.valormonokcal).to eq(0)
            expect(@etiqueta3.valormonokcal).to eq(0)
            expect(@etiqueta4.valormonokcal).to eq(90)
        end
         it "Prueba Cantidad Polisaturadas en Kcal" do
            expect(@etiqueta1.valorpolinkj).to eq(0)
            expect(@etiqueta2.valorpolinkcal).to eq(0)
            expect(@etiqueta3.valorpolinkj).to eq(0)
            expect(@etiqueta4.valorpolinkcal).to eq(5.3999999999999995)
        end
        it "Prueba Cantidad Hidratos en Kcal" do
            expect(@etiqueta1.valorhidratoskcal).to eq(18.8)
            expect(@etiqueta2.valorhidratoskcal).to eq(308)
            expect(@etiqueta3.valorhidratoskcal).to eq(68)
            expect(@etiqueta4.valorhidratoskcal).to eq(80)
        end
         it "Prueba Cantidad Polialcohol en Kcal" do
            expect(@etiqueta1.valorpolialkcal).to eq(0)
            expect(@etiqueta2.valorpolialkcal).to eq(0)
            expect(@etiqueta3.valorpolialkcal).to eq(12)
            expect(@etiqueta4.valorpolialkcal).to eq(2.4)
        end
         it "Prueba Cantidad Almidon en Kcal" do
            expect(@etiqueta1.valoralmidonkcal).to eq(0)
            expect(@etiqueta2.valoralmidonkcal).to eq(0)
            expect(@etiqueta3.valoralmidonkcal).to eq(0)
            expect(@etiqueta4.valoralmidonkcal).to eq(16)
        end
          it "Prueba Cantidad Fibra en Kcal" do
            expect(@etiqueta1.valorfibrakcal).to eq(0)
            expect(@etiqueta2.valorfibrakcal).to eq(0)
            expect(@etiqueta3.valorfibrakcal).to eq(12.8)
            expect(@etiqueta4.valorfibrakcal).to eq(22)
        end
        it "Prueba Cantidad Proteinas en Kcal" do
            expect(@etiqueta1.valorproteinaskcal).to eq(2)
            expect(@etiqueta2.valorproteinaskcal).to eq(28.8)
            expect(@etiqueta3.valorproteinaskcal).to eq(2)
            expect(@etiqueta4.valorproteinaskcal).to eq(8)
        end
        it "Prueba Cantidad sal en Kcal" do
            expect(@etiqueta1.valorsalkcal).to eq(0.06)
            expect(@etiqueta2.valorsalkcal).to eq(0.06)
            expect(@etiqueta3.valorsalkcal).to eq(0)
            expect(@etiqueta4.valorsalkcal).to eq(30)
        end
        it "Prueba Valor Energetico en Kcal" do
            expect(@etiqueta1.valorenerkcal).to eq(29.86)
            expect(@etiqueta2.valorenerkcal).to eq(343.16) 
            expect(@etiqueta3.valorenerkcal).to eq(94.8)
            expect(@etiqueta4.valorenerkcal).to eq(325.8) 
        end
        it "Prueba porcentaje %IR valorenergetico " do
           expect(@etiqueta1.valorenerir).to eq(1.4958333333333333)
           expect(@etiqueta2.valorenerir).to eq(17.351785714285718)
           expect(@etiqueta3.valorenerir).to eq(4.746428571428572)
           expect(@etiqueta4.valorenerir).to eq(16.10952380952381)
        end
        it "Prueba porcentaje %IR grasa" do
            expect(@etiqueta1.grasair).to eq(0)
            expect(@etiqueta2.grasair).to eq(1)
            expect(@etiqueta3.grasair).to eq(0)
            expect(@etiqueta4.grasair).to eq(0)
        end
        it "Prueba porcentaje %IR Saturados" do
            expect(@etiqueta1.saturadasir).to eq(0)
            expect(@etiqueta2.saturadasir).to eq(1)
            expect(@etiqueta3.saturadasir).to eq(0)
            expect(@etiqueta4.saturadasir).to eq(0)
        end
        it "Prueba porcentaje %IR hidratos" do
            expect(@etiqueta1.hidratosir).to eq(1.8076923076923077)
            expect(@etiqueta2.hidratosir).to eq(0)
            expect(@etiqueta3.hidratosir).to eq(0)
            expect(@etiqueta4.hidratosir).to eq(0)
        end
        it "Prueba porcentaje %IR Azucares" do
            expect(@etiqueta1.azucaresir).to eq(4.666666666666667)
            expect(@etiqueta2.azucaresir).to eq(0.5555555555555556)
            expect(@etiqueta3.azucaresir).to eq(4.666666666666667)
            expect(@etiqueta4.azucaresir).to eq(0)
        end
        
        it "Prueba porcentaje %IR proteinas" do
            expect(@etiqueta1.proteinasir).to eq(1)
            expect(@etiqueta2.proteinasir).to eq(14.400000000000002)
            expect(@etiqueta3.proteinasir).to eq(1)
            expect(@etiqueta4.proteinasir).to eq(0)
        end
        it "Prueba porcentaje %IR Sal" do
            expect(@etiqueta1.salir).to eq(0.16666666666666669)
            expect(@etiqueta2.salir).to eq(0.16666666666666669)
            expect(@etiqueta3.salir).to eq(0)
            expect(@etiqueta4.salir).to eq(0)
        end
         #Pruebas Práctica9
        it "Prueba comprobacion tipo clase y jerarquia"do
            expect(@etiqueta1).to be_instance_of(Gema::Nutricion)
            expect(@etiqueta1.is_a?Object)
            expect(@etiqueta1.respond_to?(:grasa))
            expect(@etiqueta1.class).to eq(Gema::Nutricion)
            expect(Gema::Individuo.superclass).to eq(Object)
            expect(Gema::Individuo.superclass.superclass).to eq(BasicObject)
        end
        #Pruebas Práctica9
        it "Prueba Alimento Formateado"do
        expect(@etiqueta1.to_s) == ('Valores Nutricionales 100g/100ML Zumo (Grasas:1,Saturadas:0,MonoSaturadas:0,Polisaturadas:0,Hidratos:4.7,Azucares:4.2,Polialcohol:0,Almidon:0,Fibra:0,Proteinas:0.5,Sal:0.01')
        end
        #Pruebas Práctica 9 : Comparable
        describe "La etiqueta nutricional es comparable" do
            it "Se comparan correctamente las etiques"do
                expect(@etiqueta1 > @etiqueta2).to eq(true)
                expect(@etiqueta1 < @etiqueta2).to eq(false)
                expect(@etiqueta1 == @etiqueta2).to eq(false)
                 expect(@etiqueta3 > @etiqueta4).to eq(false)
                expect(@etiqueta3 < @etiqueta4).to eq(true)
                expect(@etiqueta3 == @etiqueta4).to eq(false)
            end
            it "Un alimento esta entre dos alimentos según su  grasa" do
                expect(@etiqueta1.between?(@etiqueta2, @etiqueta4)).to eq(true)
            end

        
        end
    end
end
