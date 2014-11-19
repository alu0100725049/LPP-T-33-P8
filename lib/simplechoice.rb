require 'question'

class SimpleChoice < Question

	attr_accessor :right, :distractor

	def initialize(args)
		super(:text => args[:text])
		@right = args[:right]
		@distractor = args[:distractor]
	end
    
    def check(resp)
        if self.right == "#{resp}"
            return true
        else
            return false
        end
    end


	def options_to_s
		options = @distractor + @right
		s = ""
		options.each do |option|
			s += "\t#{option}\n"
		end
		s
	end
    
    def right
        @right[0]
    end

end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end
