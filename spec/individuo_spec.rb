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
    end
end