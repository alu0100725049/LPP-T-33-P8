require "spec_helper"
require 'truefalse'

describe TrueFalse do
	
	it "has to have text" do
		q = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => ["FALSE"])
		expect(q.text).to be == "Es apropiado que una clase Tablero herede de una clase Juego"
	end
	
	it "has to show TRUE/FALSE options" do
		q = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => ["FALSE"])
		expect(q.options_to_s).to be == ("\tTRUE\n\tFALSE\n" || "\tFALSE\n\tTRUE\n")
	end

end
