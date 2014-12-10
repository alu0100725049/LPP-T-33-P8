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
        
        instance_eval &block
    end
    
    def question(text, options = {})
        distractors = []
        distractors << options[:wrong] while options[:wrong]
            
        if(options[:right] == 'FALSE' || options[:right] == 'TRUE')
            add(:type => 0, :text => text, :right => options[:right])
        elsif
            add(:type => 1, :text => text, :right => options[:right] , :distractor => distractors )
        end
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
    
    def right
       :right 
    end
    
    def wrong
        :wrong 
    end
            
end
