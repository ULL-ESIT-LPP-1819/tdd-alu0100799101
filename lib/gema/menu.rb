class Menu
  attr_accessor :dia, :titl, :ingesta_min, :ingesta_max, :al_desayuno, :al_almuerzo, :al_cena

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
  end
end