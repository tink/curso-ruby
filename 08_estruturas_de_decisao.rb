## Operadores de comparação
puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4

puts 1 == 1
puts 2 != 1

puts 'cat' < 'dog'

puts 'cat' == 'dog'
puts 'cat' == 'cat' #java não deixa

## if

vida = gets.to_i
puts "Você tem #{vida} pontos de vida."
if vida <= 0
  puts "Você está muito cansado pra lutar"
end

## else

vida = gets.to_i
puts "Você tem #{vida} pontos de vida."
if vida <= 0
  puts "Você está muito cansado pra lutar"
else
  puts "Você está pronto pra lutar!"
end

## if aninhado

puts 'Olá, e bem vindo a 7a série de português.'
puts 'Meu nome é profa. Mafalda. E você é...?'
name = gets.chomp

if name == name.capitalize
  puts 'Por favor se sente, ' + name + '.'
else
  puts name + '?  Você quis dizer ' + name.capitalize + ', certo?'
  puts 'Você pelo menos sabe soletrar seu nome??'
  reply = gets.chomp

  if reply.downcase == 'sim'
    puts 'Hmmph!  Bem, se sente!'
  else
    puts 'CAI FORA!!'
  end
end

## unless

vida = gets.to_i
puts "Você tem #{vida} pontos de vida."
unless vida > 5
    puts "Se eu fosse você não ia lutar, o dragão é muito forte."
end


## lógica

vida = gets.to_i
if vida >= 0 and vida <= 5
    puts "Você está muito cansado pra lutar."
end

if vida > 5 and vida <= 10
    puts "Você está pronto pra enfrentar o dragão!"
end
  
if vida < 0 or vida > 10
    puts "Hum... você não pode ter #{vida} pontos de vida."
end

## case

vida = gets.to_i
case vida
  when 0..3
    puts "Você está muito cansado pra lutar."
  when 4..7
    puts "Você não está em sua melhor forma, cuidado com o dragão"
  when 8..10
    puts "Você está pronto pra enfrentar o dragão!"
  else
    puts "Hum... você não pode ter #{vida} pontos de vida."
end
