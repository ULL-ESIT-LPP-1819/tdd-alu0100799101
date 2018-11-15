class Nodo
     Nodo = Struct.new(:valor, :siguiente, :previo)
     def initialize(valor,siguiente,previo)
          @valor = valor
          @siguiente = nil
          @previo = nil
     end
end     