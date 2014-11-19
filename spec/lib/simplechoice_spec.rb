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
		expect(@q.right).to be == "Ninguna de las anteriores"
	end

	it "has to show the text into string" do
		@q = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(@q.text_to_s).to be == "2+5=\n"
	end

	it "has to show the options" do
		@q = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(@q.options_to_s).to be == "\t4\n\t5\n\t6\n\tNinguna de las anteriores\n"
	end

	it "has to show the SimpleChoice and options" do
		@q = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
		expect(@q.show).to be == "2+5=\n\t4\n\t5\n\t6\n\tNinguna de las anteriores\n"
	end

    
end
