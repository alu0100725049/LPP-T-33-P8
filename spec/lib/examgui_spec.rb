require "spec_helper"
require 'examgui'

describe ExamGUI do
	
    it "Debe tener nombre" do
        exam = ExamGUI.new
        expect(exam.name).to be == "Sin Nombre"
        
        exam.name = "Examen"
        expect(exam.name).to be == "Examen"
	end
    
	it "Debe introducirse una pregunta" do
        exam = ExamGUI.new
        exam.add(:type => 1, :text => "2+5=", :right => ["Ninguna de las anteriores"], :distractor => ["4","5","6"])
        expect(exam.show).to be == exam.name + "2+5=\n\t4\n\t5\n\t6\n\tNinguna de las anteriores\n"
	end
    
    it "Debe mostrarse el nombre del examen y las preguntas de forma ordenada" do
        exam = ExamGUI.new
        exam.add(:type => 1, :text => "2+5=", :right => ["Ninguna de las anteriores"], :distractor => ["4","5","6"])
        exam.add(:type => 0, :text => 'Es apropiado que una clase Tablero herede de una clase Juego', :right => ["FALSE"])
        
        expect(exam.show).to be == exam.name + "2+5=\n\t4\n\t5\n\t6\n\tNinguna de las anteriores\nEs apropiado que una clase Tablero herede de una clase Juego\n\tTRUE\n\tFALSE\n"
	end
    
    
    it "Debe comprobar que las respuestas son correctas" do
        exam = ExamGUI.new
        exam.add(:type => 1, :text => "2+5=", :right => ["Ninguna de las anteriores"], :distractor => ["4","5","6"])
        
        exam.add(:type => 0, :text => 'Es apropiado que una clase Tablero herede de una clase Juego', :right => ["FALSE"])
        
        resp1 = ["Ninguna de las anteriores", "FALSE"]
        expect(exam.check(resp1)).to be == [true,true]
        
        resp2 = ["Ninguna de las anteriores", "TRUE"]
        expect(exam.check(resp2)).to be == [true,false]
        
        resp3 = ["4", "FALSE"]
        expect(exam.check(resp3)).to be == [false,true]
	end

    it "Debe mostrarse el nombre del examen y las preguntas en orden inverso" do
        exam = ExamGUI.new
        exam.add(:type => 1, :text => "2+5=", :right => ["Ninguna de las anteriores"], :distractor => ["4","5","6"])
        exam.add(:type => 0, :text => 'Es apropiado que una clase Tablero herede de una clase Juego', :right => ["FALSE"])
        
        expect(exam.show_i).to be == exam.name + "Es apropiado que una clase Tablero herede de una clase Juego\n\tTRUE\n\tFALSE\n2+5=\n\t4\n\t5\n\t6\n\tNinguna de las anteriores\n"
    end
    
#=begin
     it "Debe tener implementado un DSL" do
        exam = ExamGUI.new("Cuestionario de LPP 05/12/2014") {
            question "Cuantos argumentos de tipo bloque puede recibir un metodo?",
                right =>'1',
                wrong =>'2', 
                wrong =>'muchos',
                wrong =>'los que defina el usuatio'
                
            question "En Ruby los bloque son objetos que continen codigo",
                right => 'FALSE'
        }
        
        expect(exam.show).to be == exam.name + 
            "Cuantos argumentos de tipo bloque puede recibir un metodo?\n"+
                "\t1\n"+
                "\t2\n"+
                "\tmuchos\n"+
                "\tlos que defina el usuario\n"+
            "En Ruby los bloque son objetos que continen codigo\n"+
                "\tFALSE\n"+
                "\tTRUE\n"                      
    end
#=end

end