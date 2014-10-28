require "spec_helper"
require "node"

describe Node do 
	it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
		@n1 = Node.new(
				:value => 'Dato1 ')
		@n2 = Node.new(
				:value => 'Dato2 ')

		@n1.next = @n2

		expect(@n1.value) == 'Dato1 '
		expect(@n1.next) == @n2 
	end
end