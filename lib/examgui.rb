require 'exam/version'
require 'exam'
require 'simplechoice'
require 'truefalse'
require 'list'

class ExamGUI
    attr_accessor :exam, :name
    
    def initialize(name = "Sin Nombre", &block)
        @exam = Exam.new(List.new)
        @name = name
        @counter = 0
        instance_eval &block if block != nil
    end
    
    def question(text, options = {})
        @counter = 0
        distractors = [];   right = []
        
        right << "#{options[:right]}" if options[:right]
        
        i=0
        
        options.each do |key,value|
           if(key != :right )
               distractors << value
        end
        end
        
        
        if(right == ["FALSE"] || right == ["TRUE"])
            add(:type => 0, :text => text, :right => right)
        elsif
            add(:type => 1, :text => text, :right => right , :distractor => distractors )
        end
        
       puts "--------------" + "#{right}" + "#{distractors}"
        
    end

    def right
        :right
    end
    
    def wrong
        @counter += 1
        "wrong#{@counter}:"
    end
    
    
    def add(args)   #Añade una pregunta al examen
        if args[:type] == 1       #La pregunta es SimpleChoice
            q = SimpleChoice.new(
                :text => args[:text],
                :right => args[:right],
                :distractor => args[:distractor])
            
        elsif args[:type] == 0    #La pregunta es TrueFalse
            q = TrueFalse.new(
                :text => args[:text],
                :right => args[:right])
        end
        
        (@exam.list).push(:elm => [q])
    end
        
    def check(resp)
        resul = []
        i=0
        (@exam.order).each do |quest|
           resul << (resp[i] == quest.right)
            i += 1
        end
        resul
    end
    
    def show
        @name + @exam.show 
    end

    def show_i
        @name + @exam.show_i
    end
            
end
