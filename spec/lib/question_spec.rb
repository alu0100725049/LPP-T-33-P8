require "spec_helper"
require 'question'

describe Question do
	
	it "has to have a text" do
		@q = Question.new(:text => '2+5=')
		expect(@q.text).to be == '2+5='
	end

    it "has to show text and option/s" do
		@q = Question.new(:text => '2+5=')
		expect(@q.show).to be == '2+5='
	end
    
end