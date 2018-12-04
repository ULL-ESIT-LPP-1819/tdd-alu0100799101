require 'spec_helper'

RSpec.describe Gema::Individuo do 
	before :each do 
	      @mujer1 = Gema::Individuo.new("Maria",70,1.6,20,0,[80,80.2],[99.3,99.6])
	      @mujer2 = Gema::Individuo.new("Raquel",58,1.7,25,0,[51.2,51.5],[70.1,70.3])
	      @hombre1 = Gema::Individuo.new("Pablo",60,1.9,35,1,[61.1,61.5],[73.5,73.8])
	      @hombre2 = Gema::Individuo.new("Andres",100,1.5,13,1,[110.3,110.6],[99.8,100.2])
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
                @paciente1 = Gema::Paciente.new("Pedro",60,1.8,24,1,[50,51],[70,71])
                @paciente2 = Gema::Paciente.new("Julia",80,1.6,34,0,[50,51],[80,81])
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
    end
end