## Atribuições
puts '...you can say that again...'
puts '...you can say that again...'

frase = '...you can say that again...' # Em Ruby não é necessário declarar o tipo da variável
puts frase
puts frase

name = 'Patricia Rosanna Jessica Mildred Oppenheimer'
puts 'My name is ' + name + '.'
puts 'Wow!  ' + name + ' is a really long name!'

## Reatribuição
composer = 'Mozart'
puts composer + ' was "da bomb", in his day.'

composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'

## Tipagem dinâmica
var = 'just another ' + 'string'
puts var

var = 5 * (1+2)
puts var

## Tipagem forte
var = '12' + 12

## Apontam pra um valor, não referência
var1 = 8
var2 = var1
puts var1
puts var2

puts ''

var1 = 'eight'
puts var1
puts var2

## Conversões
var1 = 2
var2 = '5'

puts var1.to_s + var2

puts '15'.to_f
puts '99.999'.to_f
puts '99.999'.to_i # Arredonda pra baixo, sempre
puts ''
puts '5 is my favorite number!'.to_i # Se começa com numérico, converte
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i
