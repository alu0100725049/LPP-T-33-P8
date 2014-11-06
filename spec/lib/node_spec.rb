require "spec_helper"
require "node"

describe Node do
	it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
		@n1 = Node.new(
				:value => 'Dato1')
		@n2 = Node.new(
				:value => 'Dato2')

		@n1.next = @n2

		expect(@n1.value).to be == 'Dato1'
		expect(@n1.next).to be == @n2
	end

	it "Debe existir un Nodo de la lista con su anterior" do
		@n1 = Node.new(
				:value => 'Dato1')
		@n2 = Node.new(
				:value => 'Dato2')

		@n1.next = @n2
		@n2.prev = @n1

		expect(@n2.value).to be == 'Dato2'
		expect(@n2.prev).to be == @n1
	end
end
