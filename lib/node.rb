Node = Struct.new(:value, :next, :prev) do

	attr_accessor :value, :next, :prev

	def initialize(args)
		@value = args[:value]
		@next = args [:next]
		@prev = args [:prev]
	end

end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end
