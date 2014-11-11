require 'exam/version'

class Question
	attr_accessor :text

	def initialize(args)
		@text = args[:text]
	end
	
	def text_to_s
		"#{@text}"
	end
	
	def show
		(self.text_to_s + self.options_to_s)
	end
	
	def options_to_s
		""
	end
	
end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end
