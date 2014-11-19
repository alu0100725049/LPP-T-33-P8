require 'exam/version'
require 'exam'
require 'simplechoice'
require 'truefalse'

class ExamGUI
    attr_accessor :exam, :name
    
    def initialize(name = "Sin Nombre")
        @exam = Exam.new
        @name = name
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
        
        @exam.add(:elm => [q])
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
            
end
