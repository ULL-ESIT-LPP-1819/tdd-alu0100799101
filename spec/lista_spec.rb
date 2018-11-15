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
                @etiqueta5 = Gema::Nutricion.new("Inventada",8,5,10,0.6,20,5,1,4,11,2,10)
                @etiqueta6 = Gema::Nutricion.new("Inventada",8,5,10,0.6,20,5,1,4,11,2,8)
                @etiqueta1.sal
                @etiqueta2.sal
                @etiqueta3.sal
                @etiqueta4.sal
                @etiqueta5.sal
                @etiqueta6.sal
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
        
    end
