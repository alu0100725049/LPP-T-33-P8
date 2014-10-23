require 'question/version'

class Question

	attr_accessor :text, :right, :distract

	def initialize(args)
		@text = args[:text]
		@right = args[:right]
		@distractor = args[:distractor]
	end

	def show_q
		options = @distractor + @right
		options = options.shuffle
		puts "Pregunta: #{@text}"
		options.each do |option|
			puts "\t#{option}\n"
		end

	end



end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end