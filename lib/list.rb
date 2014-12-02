require 'node'

class List
    include Enumerable
	attr_accessor :head, :tail

	def initialize()
		@head = nil
        @tail = nil
	end

	def push(args)	#Añade a la lista todos los argumentos que se le pasen
        
        elms = args[:elm]
        elms.each do |elm|		#Itera entre los argumentos y se van añadiendo a la lista
            
            if @head == nil     #En el caso de que la lista este vacia
                @head = Node.new(
                    :value => elm,
                    :next => nil,
                    :prev => nil)   
                @tail = @head
                
            else                #En el caso de que la lista tenga al menos un elemento
                fin = @head
                while fin.next != nil	#Deja en "fin" el ultimo elemento de la lista
                    fin = fin.next
                end

                    node = Node.new(
                        :value => elm,
                        :next => nil,
                        :prev => fin)
                    fin.next = node
                    fin = node
                    @tail = node
            end
        end
	end
 
	def pop
        fin = @tail.prev    #Deja en "fin" el penultimo elemento de la lista
        dato = @tail
        @tail = fin
        dato
	end
    
    def del(pos)
        fin = @head
		i = 0
		while i < pos
			fin = fin.next
			i=i+1
		end
		(fin.prev).next = fin.next
        (fin.next).prev = fin.prev
        fin = nil
	end

	def [](pos)
		fin = @head
		i = 0
		while i < pos
			fin = fin.next
			i=i+1
		end
		fin.value
	end

	def show
		elemento = @head
		s = ""
		while elemento != nil	#Itera entre todos los elementos de la lista mientas los muestra
			s += (elemento.value).show
			elemento = elemento.next
		end
		s
	end

	def show_i
		elemento = @tail
		s = ""
		while elemento != nil	#Itera entre todos los elementos de la lista mientas los muestra
			s += (elemento.value).show
			elemento = elemento.prev
		end
		s
	end
    
    def each
        elemento = @head
        while elemento != nil	#Itera entre todos los elementos de la lista mientas los muestra
			yield elemento.value
			elemento = elemento.next
		end
    end

    def sort
        self.sort_by{|elm| elm.show}
    end
    
end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end
