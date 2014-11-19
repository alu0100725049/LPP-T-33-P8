require 'question'

class TrueFalse < Question

	attr_accessor :right, :distractor

	def initialize(args)
		super(:text => args[:text])
		@right = args[:right][0]
		if @right == "TRUE"
            @right == "TRUE"
			@distractor = "FALSE"
		else
			@distractor = "TRUE"
		end
	end
    
    def check(resp)
        if self.right == "#{resp}"
            return true
        else
            return false
        end
    end

	def options_to_s
		"\t#{@distractor}\n" + "\t#{@right}\n"
	end
    

end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end