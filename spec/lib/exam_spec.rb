# encoding : utf-8
require "spec_helper"
require "exam"
require "truefalse"
require "simplechoice"

describe Exam do
    
    it "Debe tener nombre" do
        exam = Exam.new
        expect(exam.name).to be == "Sin Nombre"
        exam.name = "Examen1"
        expect(exam.name).to be == "Examen1"
    end
    
    it "Debe añadir una o mas preguntas" do
        exam = Exam.new
        q1 = SimpleChoice.new(
                :text => '¿Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
                :right => ['nil'],
                :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
        q2 = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => "FALSE")
        exam.add(:elm => [q1,q2])
        
        expect(exam.npreg).to be == 2
    end
    
    it "Debe mostrar el examen" do
        exam = Exam.new
        q1 = SimpleChoice.new(
                :text => '¿Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
                :right => ['nil'],
                :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
        q2 = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => "FALSE")
        
        exam.add(:elm => [q1,q2])
        expect(exam.to_s).to be == exam.name + q1.show + q2.show
    end
    
    it "Debe mostrar una pregunta del examen" do
        exam = Exam.new
        q1 = SimpleChoice.new(
                :text => '¿Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
                :right => ['nil'],
                :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
        q2 = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => "FALSE")
        
        exam.add(:elm => [q1,q2])
        expect(exam[1]).to be == q1.show
        expect(exam[2]).to be == q2.show
    end
    
    it "Debe eliminarse una pregunta del examen" do
        exam = Exam.new
        q1 = SimpleChoice.new(
                :text => '¿Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
                :right => ['nil'],
                :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
        q2 = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => "FALSE")
        q3 = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
        
        exam.add(:elm => [q1,q2,q3])
        expect(exam[2]).to be == q2.show
        
        exam.del(2)
        expect(exam[2]).to be == q3.show
    end
    
    it "Debe comprobar que una respuesta se ha respondido correctamente" do
        exam = Exam.new
        q1 = SimpleChoice.new(
                :text => '¿Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
                :right => ['nil'],
                :distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
        q2 = TrueFalse.new(
				:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
				:right => ["FALSE"])
        q3 = SimpleChoice.new(
				:text => '2+5=',
				:right => ["Ninguna de las anteriores"],
				:distractor => ["4","5","6"])
        
        exam.add(:elm => [q1,q2,q3])
        resp1 = '0'
        resp2 = 'nil'
        expect(exam.resp(1,resp1)).to be == false
        expect(exam.resp(1,resp2)).to be == true
        
        resp1 = 'TRUE'
        resp2 = 'FALSE'
        expect(exam.resp(2,resp1)).to be == false
        expect(exam.resp(2,resp2)).to be == true
        
    end
    
end