require 'question/version'

class Question

	attr_accessor :text, :right, :distractor

	def initialize(args)
		@text = args[:text]
		@right = args[:right]
		@distractor = args[:distractor]
	end

	def show_q
		options = @distractor + @right
		puts "Pregunta: #{@text}"
		options.each do |option|
			puts "\t#{option}\n"
		end
	end

	def oto_s
		options = @distractor + @right
		options.each do |option|
			s += "#{option}"
		end
		s
	end

	def qto_s
		options = @distractor + @right
		s = "#{@text}"
		s
	end



end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end