require 'spec_helper'

RSpec.describe Gema::Individuo do 
	before :each do 
	      @mujer1 = Gema::Individuo.new("Maria",70,1.6,20,0,[80,80.2],[99.3,99.6],0.0)
	      @mujer2 = Gema::Individuo.new("Raquel",58,1.7,25,0,[51.2,51.5],[70.1,70.3],0.54)
	      @hombre1 = Gema::Individuo.new("Pablo",60,1.9,35,1,[61.1,61.5],[73.5,73.8],0.27)
	      @hombre2 = Gema::Individuo.new("Andres",100,1.5,13,1,[110.3,110.6],[99.8,100.2],0.12)
	      @hombre3 =  Gema::Individuo.new("Pedro",60,1.8,24,1,[50,51],[70,71],0.0)
	      
          @etiqueta1 = Gema::Nutricion.new("Zumo",1,0,0,0,4.7,4.2,0,0,0,0.5,0.01)
          @etiqueta2 = Gema::Nutricion.new("Arroz",0.7,0.2,0,0,77,0.5,0,0,0,7.2,0.01)
          @etiqueta3 = Gema::Nutricion.new("Mermelada",0,0,0,0,17,4.2,5,0,6.4,0.5,0)
          @etiqueta4 = Gema::Nutricion.new("Inventada",8,5,10,0.6,20,5,1,4,11,2,5) 
          @etiqueta5 = Gema::Nutricion.new("Inventad",8,5,10,0.6,20,5,1,4,11,2,10)
          @etiqueta6 = Gema::Nutricion.new("Inventa",8,5,10,0.6,20,5,1,4,11,2,8)
          
          @array_menu = [ @menu1 = [@etiqueta1,@etiqueta6], @menu2 = [@etiqueta4,@etiqueta6], @menu3 = [@etiqueta1,@etiqueta4], @menu4 = [@etiqueta3,@etiqueta5],@menu5 = [@etiqueta2,@etiqueta4],@menu6 = [@etiqueta5,@etiqueta6],@menu7 = [@etiqueta2,@etiqueta3],@menu8 = [@etiqueta1,@etiqueta2], @menu9 = [@etiqueta4,@etiqueta5],@menu10 = [@etiqueta3,@etiqueta6] ]



	end
   
	describe "Atributos para individuo" do 
	     it "Existe un nombre para el individuo" do
           expect(@mujer1).to have_attributes(:nombre=>"Maria")
	       expect(@hombre1).to have_attributes(:nombre=>"Pablo")     
         end

        it "Peso del individuo" do
            expect(@mujer1).to have_attributes(:peso=>70)
	        expect(@hombre1).to have_attributes(:peso=>60)
        end

        it "Talla del individuo " do
            expect(@mujer2).to have_attributes(:talla=>1.7)
            expect(@hombre2).to have_attributes(:talla=>1.5)
        end

        it "Edad del individuo" do
            expect(@mujer2).to have_attributes(:edad=>25.0)
            expect(@hombre2).to have_attributes(:edad=>13.0)
    	end
    	it "Prueba to_s" do
    	    expect(@mujer2.to_s) == ('Ficha Individuo: Nombre:Raquel, Peso:58 , Talla: 1,7 , Edad:25 , Sexo: 0')
        end
        
        describe "Pruebas Imc,Grasa y Oms" do
        
            it "Prueba IMC" do
                expect(@mujer1.imc.round(3)).to eq(27.344)
                expect(@hombre1.imc.round(3)).to eq(16.620)
            end
            it "Prueba grasa" do
                expect(@mujer2.grasa.round(2)).to eq (24.43)
                expect(@hombre2.grasa.round(2)).to eq(40.12)
            end
            it "Prueba OMS" do
                expect(@mujer1.oms).to eq("Sobrepeso,Sobrepeso")
                expect(@hombre1.oms).to eq("Bajo Peso,Delgado")
            end
                
        end
        
        describe "Prueba calculocintura,calculocadera , rcc y rccclasif" do
             
            it "Prueba calculo cintura" do
                expect(@mujer1.calcintura.round(2)).to eq(80.1)
                expect(@hombre1.calcintura.round(2)).to eq(61.3)
            end
            it "Prueba calculo cadera" do
                expect(@mujer1.calcadera.round(2)).to eq(99.45)
                expect(@hombre1.calcadera.round(2)).to eq(73.65)
                
            end
            it "Prueba RCC" do
                expect(@mujer1.rcc.round(2)).to eq(0.81)
                expect(@hombre1.rcc.round(2)).to eq(0.83)
            end
            
            it "Prueba rccclasif" do
                expect(@mujer1.rccclasif).to eq ("Mujeres Riesgo Moderado")
                expect(@hombre1.rccclasif).to eq("Hombres Riesgo Bajo")
            
            end
        end
        describe "Pruebas para comprobar  el tipo y la clase de un objeto y su pertenencia a una jerarquía" do
            before :all do
                @paciente1 = Gema::Paciente.new("Pedro",60,1.8,24,1,[50,51],[70,71],0.12)
                @paciente2 = Gema::Paciente.new("Julia",80,1.6,34,0,[50,51],[80,81],0.54)
                @paciente1.imc
                @paciente2.imc
            end
            it "El objeto pertenece a la clase correspondiente " do
            
            expect(@paciente1).to be_instance_of(Gema::Paciente)
            expect(@paciente1.class).to eq(Gema::Paciente)
            expect(Gema::Paciente.superclass).to eq(Gema::Individuo)
            expect(Gema::Paciente.superclass.superclass).to eq(Object)
            expect(Gema::Paciente.superclass.superclass.superclass).to eq(BasicObject)
            
            expect(@paciente2).to be_instance_of(Gema::Paciente)
            expect(@paciente2.class).to eq(Gema::Paciente)
            expect(Gema::Paciente.superclass).to eq(Gema::Individuo)
            expect(Gema::Paciente.superclass.superclass).to eq(Object)
            expect(Gema::Paciente.superclass.superclass.superclass).to eq(BasicObject)
            
            end
            it"Pertenece al tipo x" do
             expect(@paciente1.respond_to?(:imc))
             expect(@paciente1.respond_to?(:oms))
            end
           
        end 
            #Pruebas Práctica 9 : Comparable
        describe "Los individuo comparables"do
            it "Se comparan correctamente los individuos" do
                expect(@mujer1 > @mujer2).to eq(true)
                expect(@mujer1 < @mujer2).to eq(false)
                expect(@mujer1 == @mujer2).to eq(false)
                expect(@hombre1 > @hombre2).to eq(false)
                expect(@hombre1 < @hombre2).to eq(true)
                expect(@hombre1 == @hombre2).to eq(false)
            end
        end
        describe "Pruebas Práctica 10 Programación funcional para el Menú"do
            it"Pruebas Peso teórico ideal"do
                expect(@mujer1.respond_to?(:pti))
                expect(@mujer1.pti.round(3)).to eq(57.5)
                expect(@mujer2.pti.round(3)).to eq(65.0)
                expect(@hombre1.pti.round(3)).to eq(80.0)
                expect(@hombre2.pti.round(3)).to eq(50)
            end
            it "Pruebas gasto energetico basal"do
                expect(@hombre1.respond_to?(:geb))
                expect(@mujer1.geb.round(3)).to eq(1439.0)
                expect(@mujer2.geb.round(3)).to eq(1356.5)
                expect(@hombre1.geb.round(3)).to eq(1617.5)
                expect(@hombre2.geb.round(3)).to eq(1877.5)
            
            end
            it "Pruebas Efecto Termogeno" do
                expect(@mujer1.efecto_termogeno.round(3)).to eq(143.9)
                expect(@mujer2.efecto_termogeno.round(3)).to eq(135.65)
                expect(@hombre1.efecto_termogeno.round(3)).to eq(161.75)
                expect(@hombre2.efecto_termogeno.round(3)).to eq(187.75)
                     
            end
        
             it "Pruebas Gasto Actividad Fisica" do
                expect(@mujer1.gaf.round(3)).to eq(0.0)
                expect(@mujer2.gaf.round(3)).to eq(732.51)
                expect(@hombre1.gaf.round(3)).to eq(436.725)
                expect(@hombre2.gaf.round(3)).to eq(225.3)
                     
            end
             it "Pruebas Gasto Energetico Total" do
                expect(@mujer1.geT.round(3)).to eq(1582.9)
                expect(@mujer2.geT.round(3)).to eq(2224.66)
                expect(@hombre1.geT.round(3)).to eq(2215.975)
                expect(@hombre2.geT.round(3)).to eq(2290.55)
                     
            end
            it "Menú  1 para el hombre2(individuo)" do
            menucalorias = @menu1.map{ |i| i.valorenerkcal}
            total_calorias = menucalorias.reduce(:+)
            gasto_energetico = @hombre2.geT
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
            end
            it "Menú 2 para el hombre1(individuo)" do
            menucalorias = @menu2.map{ |i| i.valorenerkcal}
            total_calorias = menucalorias.reduce(:+)
            gasto_energetico = @hombre1.geT
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
            end
            it "Menú 3 para el mujer1(individuo)" do
            menucalorias = @menu3.map{ |i| i.valorenerkcal}
            total_calorias = menucalorias.reduce(:+)
            gasto_energetico = @mujer1.geT
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
            end
            it "Menú 2 para el hombre3(individuo)" do
            menucalorias = @menu4.map{ |i| i.valorenerkcal}
            total_calorias = menucalorias.reduce(:+)
            gasto_energetico = @hombre3.geT
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
            end
            it "Menú 2 para el mujer2(individuo)" do
            menucalorias = @menu5.map{ |i| i.valorenerkcal}
            total_calorias = menucalorias.reduce(:+)
            gasto_energetico = @mujer2.geT
            gasto_energetico = gasto_energetico * 0.10
            expect(total_calorias >= gasto_energetico).to eq(true)
            end
       end
        describe "Pruebas para  Practicas 11"do
            
        end
    
    end
end