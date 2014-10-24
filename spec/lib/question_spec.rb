require "spec_helper"
require "question"

describe Question do 
	it "has to have a text" do
		@q = Question.new(
				:text => '2+5= ',
				:right => ["Ninguna de las anteriores"],
				:distractor => [4,5,6])

		expect(@q.text) == '2+5= ' 
	end

	it "has to have a some options" do
		@q = Question.new(
				:text => "",
				:right => ["Ninguna de las anteriores"],
				:distractor => [4,5,6])

		expect(@q.distractor) == [4,5,6]
		expect(@q.right) == ["Ninguna de las anteriores"]
	end

	it "has to show the question" do
		@q = Question.new(
				:text => '2+5 = ',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4 ","5 ","6 "])

		expect(@q.qto_s) == "2+5 = "
	end 

	it "has to show the options" do
		@q = Question.new(
				:text => '2+5 = ',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4 ","5 ","6 "])

		expect(@q.qto_s) == "4 5 6 Ninguna de las anteriores"
	end 

	it "has to show the question and options" do
		@q = Question.new(
				:text => '2+5= ',
				:right => ["Ninguna de las anteriores"],
				:distractor => [4,5,6])
		expect(@q.show_q)
	end 
end
