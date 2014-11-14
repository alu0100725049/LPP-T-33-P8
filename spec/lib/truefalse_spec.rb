require "spec_helper"
require 'truefalse'

describe TrueFalse do
	
	it "has to have text" do
		@q = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => "FALSE")
		expect(@q.text_to_s).to be == 'Es apropiado que una clase Tablero herede de una clase Juego'
	end
	
	it "has to show TRUE/FALSE options" do
		@q = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => "FALSE")
		expect(@q.options_to_s).to be == ("TRUEFALSE" || "FALSETRUE")
	end
    
    it "has to be comparable" do
		q1 = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => ["TRUE"])
        q2 = TrueFalse.new(
				:text => '2+5=8',
				:right => ["FALSE"])
		expect(q1 <=> q2).to be == 1
        expect(q1 > q2).to be == TRUE
        expect(q1 < q2).to be == FALSE
        expect(q1 == q2).to be == FALSE
	end

end
