## Métodos

# Chamando três métodos de uma vez
puts gets.chomp

# Tudo é método
puts 'Hello'.+ ' World'
puts (10.* 9).+ 9

## Definindo métodos

def saudacoes
  puts 'Ola!'
end
saudacoes
saudacoes()

def saudacoes(nome)
  puts "Ola, #{nome}!"
end
saudacoes 'Alguém'
saudacoes('Alguém')
saudacoes

def saudacoes(nome = 'Fulano')
  puts "Ola, #{nome}"
end
saudacoes('Voce')
saudacoes

## Variáveis locais
def saudacoes(nome)
  nome_capitalizado = name.capitalize
  puts nome_capitalizado
end
nome = 'Joao'
saudacoes('Jose')
puts nome_capitalizado
