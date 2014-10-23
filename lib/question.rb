require 'question/version'

class Question

	attr_accessor :text, :right, :distractor

	def initialize(args)
		@text = args[:text]
		@right = args[:right]
		@distractor = args[:distractor]
	end

	def show_q
		options = @distractor + [@right]
		options = options.shuffle
		s = ''
		options.each do |options|
			s += %Q(#{options}\n)
		end
		puts "#{@text}\n#{s}"
	end



end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end