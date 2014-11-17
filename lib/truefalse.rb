require 'question'

class TrueFalse < Question

	attr_accessor :right, :distractor

	def initialize(args)
		super(:text => args[:text])
		@right = args[:right]
		if @right == ["TRUE"] 
			@distractor = ["FALSE"]
		else
			@distractor = ["TRUE"]
		end
	end

	def options_to_s
		"#{@distractor}" + "#{@right}"
	end
    
    def right
        @right[0]
    end
    
    def distractor
        s = ""
        @distractor.each do |distract|
            s += distract
        end
        s
    end

end

if __FILE__ == $0	#Se ejecuta si el programa se lanza desde el fichero

end