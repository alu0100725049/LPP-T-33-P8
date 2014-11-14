require 'node'

class List
    
	attr_accessor :head, :tail

	def initialize(head)
		@head = Node.new(
				:value => head,
				:next => nil)
		@tail = @node
	end

	def push(args)	#Añade a la lista todos los argumentos que se le pasen
		fin = @head
		while fin.next != nil	#Deja en "fin" el ultimo elemento de la lista
			fin = fin.next
		end

		elms = args[:elm]
		elms.each do |elm|		#Itera entre los argumentos y se van añadiendo a la lista
			node = Node.new(
				:value => elm,
				:next => nil,
				:prev => fin)
			fin.next = node
			fin = node
			@tail = node
		end
	end

	def pop
		fin = @head
		while (fin.next).next != nil	#Deja en "fin" el penultimo elemento de la lista
			fin = fin.next
		end
		dato = fin.next
		fin.next = nil
		@tail = fin
		dato
	end

	def elm(pos)
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
   
end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end
