# encoding : utf-8
require "spec_helper"
require "list"
require "simplechoice"

describe List do
	it "Se extrae el primer elemento de la lista" do
		@l = List.new
		@l.push(:elm => ["Dato2","Dato3"])

		expect((@l.pop).value).to be == "Dato3"
	end

	it "Se puede insertar un elemento" do
		@l = List.new
		@l.push(:elm => ["Dato1","Dato2"])

		expect(@l[1]).to be == "Dato2"
	end

	it "Se pueden insertar varios elementos" do
		@l = List.new

		@l.push(:elm => ["Dato1","Dato2","Dato3"])

		expect(@l[1]).to be == "Dato2"
		expect(@l[2]).to be == "Dato3"
	end

	it "Debe existir una lista con su cabeza" do
		@l = List.new

		@l.push(:elm => ["Dato1","Dato2","Dato3"])

		expect(@l.head.value).to be == "Dato1"
	end

	it "Debe devolver un examen correctamente" do
		q1 = SimpleChoice.new(
			:text => 'Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
			:right => ['nil'],
			:distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
		q2 = SimpleChoice.new(
			:text => 'La siguiente definicion de un hash en Ruby es válida: hash_raro = { [1 ,2 ,3] => Object.new(), Hash.new => :toto }',
			:right => ['Cierto'],
			:distractor => ['Falso'])
		q3 = SimpleChoice.new(
			:text => 'Cual es la salida del siguiente codigo en Ruby? class Array def say_hi "HEY!"end end',
			:right => ['HEY!'],
			:distractor => ['1','bob','Ninguna de las anteriores'])
		q4 = SimpleChoice.new(
			:text => 'Cual es la el tipo de objeto en el siguiente codigo Ruby? class Objeto end',
			:right => ['Una instancia de la clase Class'],
			:distractor => ['Una constante','Un objeto','Ninguna de las anteriores'])
		q5 = SimpleChoice.new(
			:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
			:right => ['Falso'],
			:distractor => ['Verdadero'])

		l = List.new
		l.push(:elm => [q1,q2,q3,q4,q5])

		expect(l.show).to be == q1.show + q2.show + q3.show + q4.show + q5.show
	end

	it "Debe existir una lista con su cola" do
		l = List.new

        l.push(:elm => ["Dato1","Dato2","Dato3"])

		expect((l.tail).value).to be == "Dato3"
	end
    
    it "Debe poder eliminarse un elemento" do
		l = List.new
		l.push(:elm => ["Dato1","Dato2","Dato3"])
        expect(l[1]).to be == "Dato2"
        
        l.del(1)
        expect(l[1]).to_not be == "Dato2"
		expect(l[1]).to be == "Dato3"
	end

	it "Debe poderse recorrer la lista hacia atrás" do
		d1 = "Dato1"
		d2 = "Dato2"
		d3 = "Dato3"
		d4 = "Dato4"
		d5 = "Dato5"
		l = List.new
		l.push(:elm => [d1,d2,d3,d4,d5])

		expect(((l.pop).prev).value).to be == d4
		expect(((l.pop).prev).value).to be == d3
		expect(((l.pop).prev).value).to be == d2
		expect(((l.pop).prev).value).to be == d1
	end
    
    it "Debe ser enumerable (each)" do
        q1 = SimpleChoice.new(
			:text => 'Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
			:right => ['nil'],
			:distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
		q2 = SimpleChoice.new(
			:text => 'La siguiente definicion de un hash en Ruby es válida: hash_raro = { [1 ,2 ,3] => Object.new(), Hash.new => :toto }',
			:right => ['Cierto'],
			:distractor => ['Falso'])
		q3 = SimpleChoice.new(
			:text => 'Cual es la salida del siguiente codigo en Ruby? class Array def say_hi "HEY!"end end',
			:right => ['HEY!'],
			:distractor => ['1','bob','Ninguna de las anteriores'])
		q4 = SimpleChoice.new(
			:text => 'Cual es el tipo de objeto en el siguiente codigo Ruby? class Objeto end',
			:right => ['Una instancia de la clase Class'],
			:distractor => ['Una constante','Un objeto','Ninguna de las anteriores'])
		q5 = SimpleChoice.new(
			:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
			:right => ['Falso'],
			:distractor => ['Verdadero'])
		l = List.new
		l.push(:elm => [q1,q2,q3,q4,q5])
        
        i=0
        l.each do |elm|
            expect(elm).to be == l[i]
            i=i+1
        end   
        
        i=0
        (l.sort).each do |elm|
            if i==0 then    expect(elm).to be == q4
            elsif i==1 then expect(elm).to be == q3
            elsif i==2 then expect(elm).to be == q1
            elsif i==3 then expect(elm).to be == q5
            elsif i==4 then expect(elm).to be == q2
            end
            i=i+1
        end  
    end
    
end