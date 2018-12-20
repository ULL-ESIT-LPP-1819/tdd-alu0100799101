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
                @individuo1 = Gema::Individuo.new("Maria",70,1.6,20,0,[80,80.2],[99.3,99.6],0.12)
	            @individuo2 = Gema::Individuo.new("Raquel",58,1.7,25,0,[51.2,51.5],[70.1,70.3],0.0)
	            @individuo3 = Gema::Individuo.new("Pablo",60,1.9,35,1,[61.1,61.5],[73.5,73.8],0.27)
	            @individuo4 = Gema::Individuo.new("Andres",68,1.5,13,1,[110.3,110.6],[99.8,100.2],0.54)
	            @individuo5 = Gema::Individuo.new("Pedro",60,1.8,24,1,[50,51],[70,71],0.0)
               
            end
        
             describe "#Atributos de la lista" do
                it "La lista tiene cabeza y cola" do
                    expect(@mi_lista).to have_attributes(:cabeza=>nil)
                    expect(@mi_lista).to have_attributes(:cola=>nil)
                end
                it "La lista esta vacia" do
                    expect(@mi_lista.empty?).to eq(true)
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
                 it "Prueba tipo,clase y jerarquia" do
                  expect (@mi_lista.respond_to?(:imc))
                  expect(@mi_lista.is_a?(Gema::Lista))
                  expect(@mi_lista.class).to eq(Gema::Lista)
                  expect(Gema::Lista.superclass).to eq(Object)
                  expect(Gema::Lista.superclass.superclass).to eq(BasicObject)
                 end
                it "La lista operar correctamente con la clasificacion de masa corporal cada individuo" do
                    @mi_lista.push_back(@individuo2)
                    @mi_lista.push_back(@individuo3)
                    @mi_lista.push_back(@individuo5)
                    @mi_lista.push_back(@individuo1)
                    @mi_lista.push_back(@individuo4)
                    expect(@mi_lista.n_nodos).to eq(5)
                    expect(@mi_lista.pop_back.oms).to eq("Obesidad Grado 1,Obesidad")
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
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(30.22)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(27.34)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(18.52)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(16.62)
                    expect(@mi_lista.pop_back.imc.round(2)).to eq(20.07)
                    expect(@mi_lista.n_nodos).to eq(0)
                end
            end
                #Pruebas Practica 9
            describe"Pruebas para enumerable " do
                   before :all do
                    @mi_lista_etiqueta = Gema::Lista.new()
                    @etiqueta1 = Gema::Nutricion.new("Zumo",1,0,0,0,4.7,4.2,0,0,0,0.5,0.01)
                    @etiqueta2 = Gema::Nutricion.new("Arroz",0.7,0.2,0,0,77,0.5,0,0,0,7.2,0.01)
                    @etiqueta3 = Gema::Nutricion.new("Mermelada",0,0,0,0,17,4.2,5,0,6.4,0.5,0)
                    @etiqueta4 = Gema::Nutricion.new("Inventada",8,5,10,0.6,20,5,1,4,11,2,5)
                    @etiqueta5 = Gema::Nutricion.new("Inventad",8,4,6,0.6,20,5,1,4,11,2,10)
                    @etiqueta6 = Gema::Nutricion.new("Inventa",8,3,2,0.6,20,5,1,4,11,2,8)
                     @mi_lista_etiqueta.push_back(@etiqueta1)
                     @mi_lista_etiqueta.push_back(@etiqueta6)
                     @mi_lista_etiqueta.push_front(@etiqueta4)
                     @mi_lista_etiqueta.push_front(@etiqueta3)
                    @mi_lista_etiqueta.push_back(@etiqueta2)
                    @mi_lista_etiqueta.push_back(@etiqueta5)
                   end
                   it 'La lista se puede recorrer' do
                        expect(@mi_lista_etiqueta).to respond_to(:each)
                    end
                #Pruebas Enumerable Etiqueta
                 it "Prueba obtiene max y min de la lista"do
                    expect(@mi_lista_etiqueta).to respond_to(:max)
                    expect(@mi_lista_etiqueta.max).to eq(@etiqueta4)
                    expect(@mi_lista_etiqueta.min).to eq(@etiqueta3)
                end
                #Recoge en un vector los valores que se le pasen
                it "Prueba con collect donde obtenemos que valorenergeticoir es menor igual a 10 " do
                expect(@mi_lista_etiqueta.collect{|i| i.valorenerir <= 10}).to eq([true,false,true,false,false,false])
               end
               #Selecciona de la lista de la cabeza a la cola y lo guarda en un vector con los valores que cumplan con lo que se selecciona.
               it "Prueba select donde obtendremos los valores que sean >= 37 en valor grasa"do
                  expect(@mi_lista_etiqueta.select{|num| num.valorgrasakj >= 37}).to eq([@etiqueta4,@etiqueta1,@etiqueta6,@etiqueta5])
                end
                it "Prueba sort para ordodenar las etiquetas"do
                    expect(@mi_lista_etiqueta.sort).to eq([@etiqueta3,@etiqueta2,@etiqueta1,@etiqueta4,@etiqueta6,@etiqueta5])
                end
            
            end
            #Prueba Practica 9 individuo
            describe "Pruebas Enumerable individuo"do 
                    before:all do
                        
                        @mi_lista_individuo = Gema::Lista.new()
                        @individuo1 = Gema::Individuo.new("Maria",70,1.6,20,0,[80,80.2],[99.3,99.6],0.0)
	                    @individuo2 = Gema::Individuo.new("Raquel",58,1.7,25,0,[51.2,51.5],[70.1,70.3],0.54)
	                    @individuo3 = Gema::Individuo.new("Pablo",60,1.9,35,1,[61.1,61.5],[73.5,73.8],0.27)
	                    @individuo4 = Gema::Individuo.new("Andres",68,1.5,13,1,[110.3,110.6],[99.8,100.2],0.12)
	                    @individuo5 = Gema::Individuo.new("Pedro",60,1.8,24,1,[50,51],[70,71],0.0)
                        @mi_lista_individuo.push_front(@individuo1)
                        @mi_lista_individuo.push_front(@individuo2)   
                        @mi_lista_individuo.push_front(@individuo3)  
                        @mi_lista_individuo.push_front(@individuo4)   
                        @mi_lista_individuo.push_front(@individuo5)
                    end
                    it 'La lista se puede recorrer' do
                             expect(@mi_lista_individuo).to respond_to(:each)
                    end
                    #Max y min valor de la lista
                    it"Prueba max y min individuo" do
                        expect(@mi_lista_individuo.max).to eq(@individuo4)
                        expect(@mi_lista_individuo.min).to eq(@individuo3)
                    end
                    it "Prueba con collect donde obtenemos que indivuos de la lista tienen imc >= 20 " do
                        expect(@mi_lista_individuo.collect{|i| i.imc >= 20}).to eq([false,true,false,true,true])
                    end
                     #Selecciona de la lista de la cabeza a la cola y lo guarda en un vector con los valores que cumplan con lo que se selecciona.
                     it "Prueba select donde obtendremos los valores que sean >= 20 imc , obteniendo solo los verdaderos"do
                        expect(@mi_lista_individuo.select{|num| num.imc >= 20}).to eq([@individuo4,@individuo2,@individuo1])
                    end
                    it "Prueba sort para ordodenar los individuos en indice de masa corporal de menor a mayor"do
                        expect(@mi_lista_individuo.sort).to eq([@individuo3,@individuo5,@individuo2,@individuo1,@individuo4])
                    end
            end   
            describe "Pruebas 11" do
                before:each do
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
                    
                  @menu1= Gema::Lista.new
                  @menu1.push_back(@etiqueta1)
                  @menu1.push_back(@etiqueta6)
                 
                  @menu2= Gema::Lista.new
                  @menu2.push_back(@etiqueta4)
                  @menu2.push_back(@etiqueta6)
                 
                 @menu3= Gema::Lista.new
                  @menu3.push_back(@etiqueta1)
                  @menu3.push_back(@etiqueta4)
                  
                  @menu4= Gema::Lista.new
                  @menu4.push_back(@etiqueta3)
                  @menu4.push_back(@etiqueta5)
                 
                 @menu5 = Gema::Lista.new
                  @menu5.push_back(@etiqueta2)
                  @menu5.push_back(@etiqueta4)
                
                  @menu6 = Gema::Lista.new
                  @menu6.push_back(@etiqueta5)
                  @menu6.push_back(@etiqueta6) 
                  
                  
                  @menu7 = Gema::Lista.new
                  @menu7.push_back(@etiqueta2)
                  @menu7.push_back(@etiqueta3)
                  
                  @menu8 = Gema::Lista.new
                  @menu8.push_back(@etiqueta1)
                  @menu8.push_back(@etiqueta2)
                  
                  @menu9 = Gema::Lista.new
                  @menu9.push_back(@etiqueta4)
                  @menu9.push_back(@etiqueta5)
                  
                  @menu10 = Gema::Lista.new
                  @menu10.push_back(@etiqueta3)
                  @menu10.push_back(@etiqueta6)
                  
                  @array_menu = [ @menu1 , @menu2, @menu3, @menu4 ,@menu5,@menu6,@menu7 ,@menu8 , @menu9 ,@menu10 ]
                 
                 @lista_individuos = Lista.new
                 @lista_individuos.push_back =(@hombre1)
                 @lista_individuos.push_back =(@hombre2)
                 @lista_individuos.push_back =(@hombre3)
                 @lista_individuos.push_back =(@mujer1)
                 @lista_individuos.push_back = (@mujer2)
                 @lista_individuos.push_back =(@mujer1)
                 @lista_individuos.push_back = (@mujer2)
                 @lista_individuos.push_back =(@hombre1)
                 @lista_individuos.push_back =(@hombre2)
                 @lista_individuos.push_back =(@hombre3)
                 end            
                 
                 it 'Obtener un vector ordenado a partir del vector de alimentos usando bucles for' do
                    expect((for_sort(@lista_pacientes).collect { |it| it.nombre})).to eq(["Tomate", "Huevo frito", "Chocolate", "Aceite de oliva"])
                    expect ((for_sort(@arra_menu).collect { |it| it.nombre})).to eq(["Tomate", "Huevo frito", "Chocolate", "Aceite de oliva"])
                 end
    
                
            
                
    
            end
end
