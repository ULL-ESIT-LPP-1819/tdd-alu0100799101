
module Gema

    Nodo = Struct.new(:valor, :siguiente, :previo)

    class Lista
        include Enumerable,Comparable
        attr_reader :n_nodos, :cabeza, :cola
        
        def initialize 
            @n_nodos = 0 # número de nodos, tamaño de la lista
            @cabeza = nil
            @cola = nil
        end
        
        
         def empty?
              if @cabeza == nil
               return true
              else 
                return false
              end
         end
        #Insertar ultima posicion de la lista
        def push_back(valor)
            nodo_aux = Nodo.new(valor, nil, nil)
            if @n_nodos == 0
                @cabeza = @cola = nodo_aux
            else
                nodo_aux.previo = @cola
                @cola.siguiente = nodo_aux
                @cola = nodo_aux
            end
            @n_nodos+=1
        end

        def back
            @cola.valor
        end
        # Inserta un elemento en la primera posición de la lista
        def push_front(valor)
            nodo_aux = Nodo.new(valor, nil, nil)
            if @n_nodos == 0
                @cabeza = @cola = nodo_aux
            else
                nodo_aux.siguiente = @cabeza
                @cabeza.previo = nodo_aux
                @cabeza = nodo_aux
            end
            @n_nodos+=1
        end
        
        def front
            @cabeza.valor
        end
                # Saca un elemento de la última posición de la lista
        def pop_back
            if @n_nodos == 0
                nil
            elsif @n_nodos == 1
                valor_aux = @cola.valor
                @cola = @cola.previo
                @cabeza = @cola
                @n_nodos -= 1
                valor_aux
            else
                valor_aux = @cola.valor
                @cola = @cola.previo
                @cola.siguiente = nil
                @n_nodos -= 1
                valor_aux
            end
        end
        # Saca un elemento de la primera posición de la lista
        def pop_front
            if @n_nodos == 0
                nil
            elsif @n_nodos == 1
                valor_aux = @cabeza.valor
                @cabeza = @cabeza.previo
                @cola = @cabeza
                @n_nodos -= 1
                valor_aux
            else
                valor_aux = @cabeza.valor
                @cabeza = @cabeza.siguiente
                @cabeza.previo = nil
                @n_nodos -= 1
                valor_aux
            end
        end
        def length

        n_nodos = 0
        node_aux = @cabeza

        while !(node_aux.nil?)
            n_nodos = n_nodos + 1
            node_aux = node_aux.siguiente
        end

        n_nodos
        end
        
      #  def each
       #     aux = @cabeza
         #   while aux != @cola
         #       yield aux.valor
         #       aux = aux.siguiente
          #  end 
          #  yield aux.valor
        #end
        def each(&block)
             node_aux = Nodo.new(nil,nil,nil)
               node_aux = @cabeza
    
            while !(node_aux.nil?)
               yield node_aux.valor
    
                 node_aux = node_aux.siguiente
            end
        end 
         def sort_for
                tmp = map{|x| x.geT}
                orden = []
                orden.push(tmp[0])
            
                for i in (1..length - 1)
                    for j in (0..i)
                        if(orden[j] >= tmp[i])
                            orden.insert(j,tmp[i])
                        break
                        elsif(orden[orden.length - 1] <= tmp[i])
                            orden.push(tmp[i])
                        break
                        end
                    end
                end
            
                orden
          end
              def sort_each
                        tmp = map{ |x| x.geT}
                    
                        i = 0
                        tmp.each do |x|
                        a = x
                        i1 = i
                        j = i1 + 1
                    
                            tmp[j..tmp.length - 1].each do |y|
                                if (a > y)
                                    a = y
                                    i1 = j
                                end
                                j+=1
                            end
                    
                            tmp[i1] = x
                            tmp[i] = a
                            i+=1
                        end
                    
                        tmp
                end
                

    end
end