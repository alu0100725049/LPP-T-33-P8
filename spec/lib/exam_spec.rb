# encoding : utf-8
require "spec_helper"
require "exam"
require "truefalse"
require "simplechoice"
require "list"

describe Exam do
    
    
    

    it "Debe añadir una o mas preguntas" do
        list = List.new
    q1 = SimpleChoice.new(
            :text => 'Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
            :right => ['nil'],
            :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
    q2 = TrueFalse.new(
            :text => 'Es apropiado que una clase Tablero herede de una clase Juego',
            :right => "FALSE")

    q3 = SimpleChoice.new(
            :text => '2+5=',
            :right => ["Ninguna de las anteriores"],
            :distractor => ["4","5","6"])
        
    list.push(:elm => [q1,q2,q3])
    exam = Exam.new(list)

        expect(exam.npreg).to be == 3
    end
    
    it "Debe mostrar el examen" do
        list = List.new
    q1 = SimpleChoice.new(
            :text => 'Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
            :right => ['nil'],
            :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
    q2 = TrueFalse.new(
            :text => 'Es apropiado que una clase Tablero herede de una clase Juego',
            :right => "FALSE")

    q3 = SimpleChoice.new(
            :text => '2+5=',
            :right => ["Ninguna de las anteriores"],
            :distractor => ["4","5","6"])
        
    list.push(:elm => [q1,q2,q3])
    exam = Exam.new(list)

        expect(exam.to_s).to be == q1.show + q2.show + q3.show
    end
    
    it "Debe mostrar una pregunta del examen" do
       list = List.new
    q1 = SimpleChoice.new(
            :text => 'Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
            :right => ['nil'],
            :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
    q2 = TrueFalse.new(
            :text => 'Es apropiado que una clase Tablero herede de una clase Juego',
            :right => "FALSE")

    q3 = SimpleChoice.new(
            :text => '2+5=',
            :right => ["Ninguna de las anteriores"],
            :distractor => ["4","5","6"])
        
    list.push(:elm => [q1,q2,q3])
    exam = Exam.new(list)

        expect(exam[1]).to be == q3.show
        expect(exam[2]).to be == q1.show
        expect(exam[3]).to be == q2.show
    end
    
    it "Debe eliminarse una pregunta del examen" do
        list = List.new
    q1 = SimpleChoice.new(
            :text => 'Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
            :right => ['nil'],
            :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
    q2 = TrueFalse.new(
            :text => 'Es apropiado que una clase Tablero herede de una clase Juego',
            :right => "FALSE")

    q3 = SimpleChoice.new(
            :text => '2+5=',
            :right => ["Ninguna de las anteriores"],
            :distractor => ["4","5","6"])
        
    list.push(:elm => [q1,q2,q3])
    exam = Exam.new(list)

        expect(exam[2]).to be == q1.show

        exam.del(2)
        expect(exam[2]).to be == q2.show
    end
    
    it "Debe mostrar el examen ordenado" do
        list = List.new
    q1 = SimpleChoice.new(
            :text => 'Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
            :right => ['nil'],
            :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
    q2 = TrueFalse.new(
            :text => 'Es apropiado que una clase Tablero herede de una clase Juego',
            :right => "FALSE")

    q3 = SimpleChoice.new(
            :text => '2+5=',
            :right => ["Ninguna de las anteriores"],
            :distractor => ["4","5","6"])
        
    list.push(:elm => [q1,q2,q3])
    exam = Exam.new(list)

        expect(exam.show).to be == q3.show + q1.show + q2.show
    end

     it "Debe mostrar el examen en orden inverso" do
        list = List.new
    q1 = SimpleChoice.new(
            :text => 'Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
            :right => ['nil'],
            :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
    q2 = TrueFalse.new(
            :text => 'Es apropiado que una clase Tablero herede de una clase Juego',
            :right => "FALSE")

    q3 = SimpleChoice.new(
            :text => 'Cual es la el tipo de objeto en el siguiente codigo Ruby? class Objeto end',
            :right => ['Una instancia de la clase Class'],
            :distractor => ['Una constante','Un objeto','Ninguna de las anteriores'])
        
    list.push(:elm => [q1,q2,q3])
    exam = Exam.new(list)

        expect(exam.show_i).to be == q2.show + q1.show + q3.show
    end
    
end