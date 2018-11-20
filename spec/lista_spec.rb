require 'spec_helper'

    RSpec.describe Gema::Nodo do
        before :all do
            @mi_nodo = Gema::Nodo.new(2,nil,nil)
        end
    
        describe "Atributos del nodo" do
            it "El nodo contiene los atributos datos, siguiente y previo" do
                expect(@mi_nodo).to have_attributes(:valor=>2)
                expect(@mi_nodo).to have_attributes(:siguiente=>nil)
                expect(@mi_nodo).to have_attributes(:previo=>nil)
            end
        end
    end    
    RSpec.describe Gema::Lista do
        before :each do
                @mi_lista = Gema::Lista.new()
                @etiqueta1 = Gema::Nutricion.new("Zumo",1,0,0,0,4.7,4.2,0,0,0,0.5,0.01)
                @etiqueta2 = Gema::Nutricion.new("Arroz",0.7,0.2,0,0,77,0.5,0,0,0,7.2,0.01)
                @etiqueta3 = Gema::Nutricion.new("Mermelada",0,0,0,0,17,4.2,5,0,6.4,0.5,0)
                @etiqueta4 = Gema::Nutricion.new("Inventada",8,5,10,0.6,20,5,1,4,11,2,5) 
                @etiqueta5 = Gema::Nutricion.new("Inventad",8,5,10,0.6,20,5,1,4,11,2,10)
                @etiqueta6 = Gema::Nutricion.new("Inventa",8,5,10,0.6,20,5,1,4,11,2,8)
                @individuo1 = Gema::Individuo.new("Maria",70,1.6,20,0,[80,80.2],[99.3,99.6])
	            @individuo2 = Gema::Individuo.new("Raquel",58,1.7,25,0,[51.2,51.5],[70.1,70.3])
	            @individuo3 = Gema::Individuo.new("Pablo",60,1.9,35,1,[61.1,61.5],[73.5,73.8])
	            @individuo4 = Gema::Individuo.new("Andres",100,1.5,13,1,[110.3,110.6],[99.8,100.2])
	            @individuo5 = Gema::Individuo.new("Pedro",60,1.8,24,1,[50,51],[70,71])
               
            end
             describe "#Atributos de la lista" do
                it "La lista tiene cabeza y cola" do
                    expect(@mi_lista).to have_attributes(:cabeza=>nil)
                    expect(@mi_lista).to have_attributes(:cola=>nil)
                end
             end
             describe "#Funcionalidad de la lista" do
                it "Se puede insertar un elemento al principio y final de la lista" do
                    expect(@mi_lista).to respond_to (:push_back)
                    @mi_lista.push_back(1003)
                    expect(@mi_lista.back).to eq(1003)
                    expect(@mi_lista).to respond_to (:push_front)
                    @mi_lista.push_front('Pepe')
                    expect(@mi_lista.front).to eq('Pepe')
                end
                it "Se puede extraer el primer y último elemento de la lista" do
                    @mi_lista.push_back(1003)
                    @mi_lista.push_front('Pepe')
                    expect(@mi_lista.n_nodos).to eq(2)
                    expect(@mi_lista).to respond_to (:pop_back)
                    expect(@mi_lista.pop_back).to eq(1003)
                    expect(@mi_lista.n_nodos).to eq(1)
                    expect(@mi_lista).to respond_to(:pop_front)
                    expect(@mi_lista.pop_front).to eq('Pepe')
                    expect(@mi_lista.n_nodos).to eq(0)
                end
            end
            describe "#Lista de alimentos" do
                it 'La lista opera correctamente con los nombres de la etiqueta' do
                    @mi_lista.push_back(@etiqueta1)
                    @mi_lista.push_back(@etiqueta6)
                    @mi_lista.push_front(@etiqueta4)
                    @mi_lista.push_front(@etiqueta3)
                    @mi_lista.push_back(@etiqueta2)
                    @mi_lista.push_back(@etiqueta5)
                    expect(@mi_lista.n_nodos).to eq(6)
                    expect(@mi_lista.pop_back.nombre).to eq("Inventad")
                    expect(@mi_lista.pop_back.nombre).to eq("Arroz")
                    expect(@mi_lista.pop_back.nombre).to eq("Inventa")
                    expect(@mi_lista.pop_back.nombre).to eq("Zumo")
                    expect(@mi_lista.pop_back.nombre).to eq("Inventada")
                    expect(@mi_lista.pop_back.nombre).to eq("Mermelada")
                    expect(@mi_lista.n_nodos).to eq(0)
                end
                it 'La lista opera correctamente con la cantidad de sal de las etiquetas' do
                    @mi_lista.push_back(@etiqueta1)
                    @mi_lista.push_back(@etiqueta6)
                    @mi_lista.push_front(@etiqueta4)
                    @mi_lista.push_front(@etiqueta3)
                    @mi_lista.push_back(@etiqueta2)
                    @mi_lista.push_back(@etiqueta5)
                    expect(@mi_lista.n_nodos).to eq(6)
                    expect(@mi_lista.pop_back.sal).to eq(10)
                    expect(@mi_lista.pop_back.sal).to eq(0.01)
                    expect(@mi_lista.pop_back.sal).to eq(8)
                    expect(@mi_lista.pop_back.sal).to eq (0.01)
                    expect(@mi_lista.pop_back.sal).to eq(5)
                    expect(@mi_lista.pop_back.sal).to eq(0)
                    expect(@mi_lista.n_nodos).to eq(0)
                end
                it 'Prueba para comprobar que la cantida de sal es mayor a 6 gramos IR' do
                    
                    @mi_lista.push_back(@etiqueta1)
                    @mi_lista.push_back(@etiqueta6)
                    @mi_lista.push_front(@etiqueta4)
                    @mi_lista.push_front(@etiqueta3)
                    @mi_lista.push_back(@etiqueta2)
                    @mi_lista.push_back(@etiqueta5)
                    expect(@mi_lista.pop_back.sal).to be > 6
                  
                end
                 it 'Prueba para comprobar que la cantida de sal es menor a 6 gramos IR' do
                    
                    @mi_lista.push_back(@etiqueta1)
                    @mi_lista.push_front(@etiqueta4)
                    @mi_lista.push_front(@etiqueta3)
                    @mi_lista.push_back(@etiqueta2)
                    
                    expect(@mi_lista.pop_back.sal).to be < 6
                  
                end
                
            end
             describe "Lista de Individuos" do
                it "La lista operar correctamente con la clasificacion de masa corporal cada individuo" do
                    @mi_lista.push_back(@individuo2)
                    @mi_lista.push_back(@individuo3)
                    @mi_lista.push_back(@individuo5)
                    @mi_lista.push_back(@individuo1)
                    @mi_lista.push_back(@individuo4)
                    expect(@mi_lista.n_nodos).to eq(5)
                    expect(@mi_lista.pop_back.oms).to eq("Obesidad Grado 2,Obesidad")
                    expect(@mi_lista.pop_back.oms).to eq("Sobrepeso,Sobrepeso")
                    expect(@mi_lista.pop_back.oms).to eq("Obesidad Grado 2,Obesidad")
                    expect(@mi_lista.pop_back.oms).to eq("Bajo Peso,Delgado")
                    expect(@mi_lista.pop_back.oms).to eq("Adecuado,Aceptable")
                    expect(@mi_lista.n_nodos).to eq(0)
                    
                end
                it "Prueba de lista con imc " do
                    @mi_lista.push_back(@individuo2)
                    @mi_lista.push_back(@individuo3)
                    @mi_lista.push_back(@individuo5)
                    @mi_lista.push_back(@individuo1)
                    @mi_lista.push_back(@individuo4)
                    expect(@mi_lista.n_nodos).to eq(5)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(44.44)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(27.34)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(18.52)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(16.62)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(20.07)
                    expect(@mi_lista.n_nodos).to eq(0)
                end
            end
 end
