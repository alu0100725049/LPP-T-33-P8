# encoding : utf-8
require "spec_helper"
require "list"

describe List do
	it "Se extrae el primer elemento de la lista" do
		@l = List.new("Dato1")
		@l.push(:elm => ["Dato2","Dato3"])

		expect((@l.pop).value).to be == "Dato3"
	end

	it "Se puede insertar un elemento" do
		@l = List.new("Dato1")
		@l.push(:elm => ["Dato2"])

		expect(@l.elm(1)).to be == "Dato2"
	end

	it "Se pueden insertar varios elementos" do
		@l = List.new("Dato1")

		@l.push(:elm => ["Dato2","Dato3"])

		expect(@l.elm(1)).to be == "Dato2"
		expect(@l.elm(2)).to be == "Dato3"
	end

	it "Debe existir una lista con su cabeza" do
		@l = List.new("Dato1")

		@l.push(:elm => ["Dato2","Dato3"])

		expect(@l.head.value).to be == "Dato1"
	end

	it "Debe devolver un examen correctamente" do
		@q1 = Question.new(
			:text => '¿Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
			:right => ['nil'],
			:distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
		@q2 = Question.new(
			:text => 'La siguiente definicion de un hash en Ruby es válida: hash_raro = { [1 ,2 ,3] => Object.new(), Hash.new => :toto }',
			:right => ['Cierto'],
			:distractor => ['Falso'])
		@q3 = Question.new(
			:text => '¿Cual es la salida del siguiente codigo en Ruby? class Array def say_hi "HEY!"end end',
			:right => ['HEY!'],
			:distractor => ['1','bob','Ninguna de las anteriores'])
		@q4 = Question.new(
			:text => '¿Cual es la el tipo de objeto en el siguiente codigo Ruby? class Objeto end',
			:right => ['Una instancia de la clase Class'],
			:distractor => ['Una constante','Un objeto','Ninguna de las anteriores'])
		@q5 = Question.new(
			:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
			:right => ['Falso'],
			:distractor => ['Verdadero'])

		@l = List.new(@q1)
		@l.push(:elm => [@q2,@q3,@q4,@q5])

		expect(@l.show).to be == 	@q1.show + @q2.show + @q3.show + @q4.show + @q5.show
	end

	it "Debe existir una lista con su cola" do
		@l = List.new("Dato1")

		@l.push(:elm => ["Dato2","Dato3"])

		expect(@l.tail.value).to be == "Dato3"
	end

	it "Debe poderse recorrer la lista hacia atrás" do
		@q1 = Question.new(
			:text => '¿Cual es la salida del siguiente codigo en Ruby? class Xyz def pots @nice end end',
			:right => ['nil'],
			:distractor => ['#<Zyz:0xa000208>','0','Ninguna de las anteriores'])
		@q2 = Question.new(
			:text => 'La siguiente definicion de un hash en Ruby es válida: hash_raro = { [1 ,2 ,3] => Object.new(), Hash.new => :toto }',
			:right => ['Cierto'],
			:distractor => ['Falso'])
		@q3 = Question.new(
			:text => '¿Cual es la salida del siguiente codigo en Ruby? class Array def say_hi "HEY!"end end',
			:right => ['HEY!'],
			:distractor => ['1','bob','Ninguna de las anteriores'])
		@q4 = Question.new(
			:text => '¿Cual es la el tipo de objeto en el siguiente codigo Ruby? class Objeto end',
			:right => ['Una instancia de la clase Class'],
			:distractor => ['Una constante','Un objeto','Ninguna de las anteriores'])
		@q5 = Question.new(
			:text => 'Es apropiado que una clase Tablero herede de una clase Juego',
			:right => ['Falso'],
			:distractor => ['Verdadero'])
			
		@l = List.new(@q1)
		@l.push(:elm => [@q2,@q3,@q4,@q5])

		expect(((@l.pop).prev).value).to be == @q4
		expect(((@l.pop).prev).value).to be == @q3
		expect(((@l.pop).prev).value).to be == @q2
		expect(((@l.pop).prev).value).to be == @q1
	end
end