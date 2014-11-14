require "spec_helper"
require "simplechoice"

describe SimpleChoice do
	
	it "has to have a text" do
		@q = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(@q.text).to be == '2+5='
	end

	it "has to have a some options" do
		@q = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(@q.distractor) == ["4","5","6"]
		expect(@q.right).to be == ["Ninguna de las anteriores"]
	end

	it "has to show the SimpleChoice" do
		@q = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(@q.text_to_s).to be == "2+5="
	end

	it "has to show the options" do
		@q = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(@q.options_to_s).to be == "456Ninguna de las anteriores"
	end

	it "has to show the SimpleChoice and options" do
		@q = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(@q.show)
	end
    
    it "has to be comparable" do
		q1 = SimpleChoice.new(
				:text => 'Cual es el tipo del objeto en el siguiente codigo en ruby?',
				:right => ["Un objeto"],
				:distractor => ["Una instancia de la clase Class","Una constante","Ninguna de las anteriores"])
        q2 = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(q1 <=> q2).to be == 1
        expect(q1 > q2).to be == TRUE
        expect(q1 < q2).to be == FALSE
        expect(q1 == q2).to be == FALSE
	end
    
end
