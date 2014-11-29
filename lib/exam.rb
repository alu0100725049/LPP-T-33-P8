require 'list'

class Exam
    attr_accessor :list, :npreg
    
    def initialize(list)
        @list = list
        @npreg = 0;
        self.order.each do 
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