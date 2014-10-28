require "spec_helper"
require "list"

describe List do 
	it "Se extrae el primer elemento de la lista" do
		@l = List.new("Dato1")

		expect(@l.elm(0).value).to be == "Dato1"
	end

	it "Se puede insertar un elemento" do
		@l = List.new("Dato1")
		@l.push(:elm => ["Dato2"])

		expect(@l.elm(0).value).to be == "Dato1"
	end

	it "Se pueden insertar varios elementos" do
		@l = List.new("Dato1")
		@n2 = Node.new(	
				:value => "Dato2")
		@n3 = Node.new(	
				:value => "Dato3")

		@l.push(:elm => ["Dato1","Dato2"])

		expect(@l.elm(1).value).to be == "Dato1"
		expect(@l.elm(2).value).to be == "Dato2"
	end

	it "Debe existir una lista con su cabeza" do
		@l = List.new("Dato1")

		@l.push(:elm => ["Dato2","Dato3"])

		expect(@l.head.value).to be == "Dato1"
	end

	it "Debe imprimir la lista formateada por pantalla" do
		@l = List.new("Dato1")

		@l.push(:elm => ["Dato2","Dato3"])

		expect(@l.show)
	end

end