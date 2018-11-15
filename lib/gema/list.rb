class Nodo
     Nodo = Struct.new(:valor, :siguiente, :previo)
    
     def initialize(value)
        @value = value
        @next = nil
     end
     
end     