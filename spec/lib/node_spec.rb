require "spec_helper"
require "node"

describe Node do 
	it "Debe existir un Nodo de la lista con sus datos y su siguiente" do
		@n1 = Node.new(
				:value => 'Dato1 ',
				:next => @n2)

		expect(@n.value) == 'Dato1 '
		expect(@n.next) == @n2 
	end
end