class Menu
  attr_accessor :dia, :titulo, :ingesta_min, :ingesta_max, :desayuno, :almuerzo, :cena

  def initialize(dia, &block)
    @dia = dia
    @titulo = ''
    @ingesta_min = 0
    @ingesta_max = 0
    @desayuno = []
    @almuerzo = []
    @cena = []

    if block_given?
      if block.arity == 1
        yield self
      else
        instance_eval(&block)
      end
    end
    def to_s
        output = @dia
        output << "\t\tTitulo: #{@titulo}\n"
        output << "Ingesta min: #{@ingesta_min} - Ingesta max: #{@ingesta_max}\n"
        output << "==================================================================\n"
        output << "".ljust(25) << "grasas".ljust(15) << "carbohid.".ljust(15) <<
        "proteínas".ljust(15) << "fibra".ljust(15) << "sal".ljust(15) << "valor energético\n"
    
        { 'Desayuno' => @desayuno,
          'Almuerzo' => @almuerzo,
          'Cena' => @cena }.each do |nombre, comida|
          output << "-- #{nombre} --\n"
          comida.each do |x|
            output << x.nombre.ljust(25) << x.grasas.to_s.ljust(15) << x.hidratos.to_s.ljust(15) <<
            x.proteinas.to_s.ljust(15) << x.fibra_alimentaria.to_s.ljust(15) << x.sal.to_s.ljust(15) << x.valor_nutr_kcal.to_s << "\n"
          end
          output << "\n"
        end
    
        output << "Valor energetico total\t"
        output << (@desayuno + @almuerzo + @cena).collect(&:valor_nutr_kcal).reduce(:+).to_s
    
        output
    end
  
  
  end
end