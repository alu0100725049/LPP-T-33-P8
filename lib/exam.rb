require 'list'

class Exam
    attr_accessor :list, :npreg
    
    def initialize(list)
        @list = list
        @npreg = 0;
    end
    
    def npreg
        @npreg = 0;
        self.order.each do 
            @npreg = @npreg + 1
        end
        return @npreg
    end

    def to_s
        @list.show
    end
    
    def [](pos)
        @list.sort[pos-1].show
    end
    
    def del(pos)
        list = List.new
        list.push(:elm => @list.sort)
        list.del(pos-1) 
        @list = list
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