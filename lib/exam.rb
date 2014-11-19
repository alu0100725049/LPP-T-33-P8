require 'list'

class Exam
    attr_accessor :list, :npreg
    
    def initialize
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
        @list.show
    end
    
    def [](pos)
        list[pos-1].show
    end
    
    def del(pos)
       @list.del(pos-1) 
    end
    
    def show
        s = ""
        (@list.sort).each do |elm|
            s = s + elm.show
        end  
        s
    end
    
    def order
        a = []
        (@list.sort).each do |elm|
            a << elm
        end  
        a
    end
end