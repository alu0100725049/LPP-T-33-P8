require 'exam/version'
require 'list'
require "truefalse"
require "simplechoice"

class Exam
    attr_accessor :list, :name, :npreg
    
    def initialize(name = "Sin Nombre")
        @name = name
        @list = List.new
        @npreg = 0
    end
    
    def add(args)
        elms = args[:elm]
        elms.each do |elm|
            @list.push(:elm => [elm])
            @npreg = @npreg + 1
        end
    end
    
    def to_s
        s = @name + @list.show
        s
    end
    
    def [](pos)
        list[pos-1].show
    end
    
    def del(pos)
       @list.del(pos-1) 
    end
    
    def resp(i,resp)
        if list[i-1].right.to_s == resp
            true
        else
            false
        end
    end
end