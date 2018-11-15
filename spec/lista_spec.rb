require "/home/ubuntu/workspace/LPP-Practica2/tdd-alu0100799101/gema/lib/gema/lista.rb"


describe Nodo do 
    before :all do
        @mi_nodo = Nodo.new(2, nil, nil)
    end

    describe "Atributos del nodo" do
        it "El nodo contiene los atributos datos, siguiente y previo" do
            expect(@mi_nodo).to have_attributes(:valor=>2)
            expect(@mi_nodo).to have_attributes(:siguiente=>nil)
            expect(@mi_nodo).to have_attributes(:previo=>nil)
        end
    end
end    
    
