require "spec_helper"
require "list"

describe List do 
	it "Se extrae el primer elemento de la lista" do
		@l = List.new(:value => 'Dato1 ')

		expect(@l.elm(0).value) == 'Dato1 '
	end

	it "Se puede insertar un elemento" do
		@l = List.new(:value => 'Dato1 ')
		@n2 = Node.new(	
				:value => 'Dato2 ')

		@l.push(:elm => [@n2])

		expect(@l.elm(1).value) == 'Dato2 '
	end

	it "Se pueden insertar varios elementos" do
		@l = List.new(:value => 'Dato1 ')
		@n2 = Node.new(	
				:value => 'Dato2 ')
		@n3 = Node.new(	
				:value => 'Dato3 ')

		@l.push(:elm => [@n2, @n3])

		expect(@l.item(1).value) == 'Dato2 '
		expect(@l.item(2).value) == 'Dato3 '
	end

	it "Debe existir una lista con su cabeza" do
		@l = List.new(:value => 'Dato1 ',
				:next => nil))
		@n2 = Node.new(	
				:value => 'Dato2 ')
		@n3 = Node.new(	
				:value => 'Dato3 ')

		@l.push(:elm => [@n2, @n3])

		expect(@l.head.dato) == 'Dato2 '
	end
end