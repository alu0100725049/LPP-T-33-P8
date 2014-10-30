require 'node/version'

Node = Struct.new(:value, :next) do

	attr_accessor :value, :next

	def initialize(args)
		@value = args[:value]
		@next = args [:next]
	end

end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end
