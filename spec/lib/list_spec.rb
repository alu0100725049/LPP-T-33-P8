require "spec_helper"
require "list"

describe List do 
	it "Se extrae el primer elemento de la lista" do
		@l = List.new()
		@n1 = Node.new(	
				:value => 'Dato1 ')
		@l.push(:elm => [@n1])

		expect(@l.elm(0).value) == 'Dato1 '
	end

	it "Se puede insertar un elemento" do
		@l = List.new()
		@n1 = Node.new(	
				:value => 'Dato1 ')
		@l.push(:elm => [@n1])

		expect(@l.elm(0).value) == 'Dato1 '
	end

	it "Se pueden insertar varios elementos" do
		@l = List.new()
		@n1 = Node.new(	
				:value => 'Dato1 ')
		@n2 = Node.new(	
				:value => 'Dato2 ')

		@l.push(:elm => [@n1, @n2])

		expect(@l.item(0).value) == 'Dato1 '
		expect(@l.item(1).value) == 'Dato2 '
	end

	it "Debe existir una lista con su cabeza" do
		@l = List.new()
		@n1 = Node.new(	
				:value => 'Dato1 ')
		@n2 = Node.new(	
				:value => 'Dato2 ')

		@l.push(:elm => [@n1, @n2])

		expect(@l.head.dato) == 'Dato1 '
	end
end