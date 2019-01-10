require'lib/menu'
RSpec.describe Menu do
  before :each do

    @menu_semanal = Menu.new('Lunes') do
      titulo    'Bajo en calorías'
      ingesta   min: 30, max: 35
      desayuno  descripcion: 'Pan de trigo integral',
        porcion: "1 rodaja",
        gramos: '100g',
        grasas: '3.3g',
        carbohidratos: '54g',
        proteinas: '11g',
        fibra: '2.3g',
        sal: '0.06g'
      desayuno  descripcion: 'Actimel',
        porcion: " 1 porcion ",
        gramos: '100g',
        grasas: '3.4g',
        carbohidratos: '4.4g',
        proteinas: '3.6g'
      almuerzo  descripcion: 'Arroz',
        porcion: " 1 taza",
        gramos: '100g',
        grasas: '0.9g',
        carbohidratos: '4.4g',
        proteinas: '3.6g',
        sal: '0.05g'
      almuerzo  descripcion: 'Lentejas',
        porcion: "1/2 cucharon",
        gramos: '100g',
        grasas: '0.4g',
        carbohidratos: '20g',
        proteinas: '9g',
        fibra: '8g',
        sal: '0.02g'
      almuerzo  descripcion: 'Narajna',
        porcion: "1 pieza",
        gramos: '100g',
        grasas: '0.12g',
        carbohidratos: '11.75g',
        proteinas: '0.94g',
        fibra: '0.94g'
      cena      descripcion: 'Leche entera hacendado',
        porcion: " 1 vaso ",
        gramos: '100g',
        grasas: '3.6g',
        carbohidratos: '4.6g',
        proteinas: '3.1g'
    end
  end
    describe "Pruebas DSL" do
        
       it "Prueba to_s" do
           expect(@menu_semanal).to respond_to(:to_s)
       end
        puts @menu_semanal.to_s
        
        
    end
end  