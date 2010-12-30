## Strings

'Oi mundo' # Podem ser declaradas utilizando aspas simples
"Ruby rocks!" # Ou serem declaradas com aspas duplas
'Podemos utilizar caracteres diversos numa string #%^?&*@!'
'     '
''
"Uma string com uma aspa simples '"
'Uma string com uma aspa dupla "'

puts 'Hello, world!' # O comando puts serve para imprimir um valor
puts ''

## Escapando

puts 'You\'re swell!'
puts 'backslash at the end of a string:  \\'
puts 'up\\down'
puts 'up\down'

## Interpolação

puts "1 + 2 = #{1 + 2}"
puts '1 + 2 = #{1 + 2}'

## Strings em múltiplas linhas

print <<HERE
Double quoted \
here document.
It is #{Time.now}
HERE

print <<-’THERE’
  This is a single quoted.
  The above used #{Time.now}
  THERE

## Aritmética com strings

puts 'I like' + 'apple pie.'
puts 'I like ' + 'apple pie.'
puts 'I like' + ' apple pie.'
puts 'blink ' * 4

## 12 vs '12'

puts  12  +  12
puts '12' + '12'
puts '12  +  12'

## Coisas que não funcionam

puts '12' + 12
puts '2' * '5'


# Métodos úteis

frase = "O rato roeu a roupa do rei de roma"
puts frase.gsub("r", "p") # Substituição de texto
puts frase

frase.gsub!("r", "p") # Substituição de texto sobrepondo a string original
puts frase

nome = "Anderson Dias de Araujo Ferreira"
puts nome.upcase # Transformando texto em maiúsculo
puts nome
nome.upcase!
puts nome

nome.downcase! # Transformando texto em minúsculo
puts nome
nome.capitalize! # Primeira letra em maiúsculo
puts nome
nome.swapcase! # Troca de maiúsculo por minúsculo
puts nome

puts "string com 20 letras".size # Conta a quantidade de caracteres de uma string
puts "string com 20 letras".length # Um alias para o método size

puts "oooooooooooooowww man!".squeeze # Remove os caracteres sequencialmente repetidos

titulo = "Titulo".center(50) # Centraliza o texto adicionando espaços antes e depois de forma que o texto possua no total 50 caracteres
puts titulo.inspect
puts titulo.lstrip.inspect # Remove caracteres de espaço a esquerda
puts titulo.rstrip.inspect # Remove caracteres de espaço a direita
puts titulo.strip.inspect # Remove caracteres de espaco a direita e a esquerda
titulo.strip!

puts titulo.reverse # Inverte a ordem do texto

"Não Vazia".empty? # Verifica se a string é vazia
" ".empty?
"".empty?

"Essa string será dividida".split # Separando cada palavra em um elemento de um Array
