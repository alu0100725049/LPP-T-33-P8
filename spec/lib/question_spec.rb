require "spec_helper"
require 'question'

describe Question do
	
	it "has to have a text" do
		@q = Question.new(:text => '2+5=')
		expect(@q.text).to be == '2+5='
	end

    it "has to show text and option/s" do
		@q = Question.new(:text => '2+5=')
		expect(@q.show).to be == "2+5=\n"
	end
    
    it "has to be comparable" do
		q1 = Question.new(:text => '2+5=')
        q2 = Question.new(:text => 'Cual de estas preguntas es correcta?')
        
        expect(q1 > q2).to be == FALSE
        expect(q2 > q1).to be == TRUE

        expect(q1 < q2).to be == TRUE
        expect(q2 < q1).to be == FALSE
        
        expect(q1 == q2).to be == FALSE
        expect(q1 == q1).to be == TRUE
        
        expect(q1 != q2).to be == TRUE
        expect(q1 != q1).to be == FALSE
	end
    
end