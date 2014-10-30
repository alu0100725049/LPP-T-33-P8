require 'list/version'

class List

	attr_accessor :elm

	def initialize(args)
		@elm = args [:elm]
	end

	def show
		puts "Elementos: #{@elm}"
	end

	def push(args)
		elementos = @elm
		elementos << args
	end

	def pop
		elementos = @elm
		elementos.shift
	end

	def head
		elementos = @elm
		cabecera = elementos(0)
		puts "Primer elemento: #{cabecera}"
	end
end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end
