require "spec_helper"
require "question"

describe Question do 
	it "has to have a text and something options" do
		@q = Question.new(
				:text => '2+5= ',
				:right => "Ninguna de las anteriores",
				:distractors => [4,5,6])

		expect(@q.text) == '2+5= '
	end

	it "has to show the question" do
		@q = Question.new(
				:text => '2+5= ',
				:right => "Ninguna de las anteriores",
				:distractors => [4,5,6])

		@q.show_q
	end 
end
