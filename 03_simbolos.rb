## Símbolos
# Lembra das constantes?

NORTE = 1 
SUL = 2 
LESTE = 3 
OESTE = 4 

def caminhar(direcao)
  case direcao
  when NORTE
    puts 'caminhando pro norte'
  when SUL
    puts 'caminhando pro sul'
  when LESTE
    puts 'caminhando pro leste'
  when OESTE
    puts 'caminhando pro oeste'
  end
end

caminhar NORTE

# Não precisa mais delas

def caminhar(direcao)
  case direcao
  when :norte
    puts 'caminhando pro norte'
  when :sul
    puts 'caminhando pro sul'
  when :leste
    puts 'caminhando pro leste'
  when :oeste
    puts 'caminhando pro oeste'
  end
end

caminhar :norte

# Geralmente usados como chaves em hashes

monstros = {
  :facil => Criatura.new('gato', 10, 10),
  :normal => Criatura.new('urso', 50, 50),
  :normal => Criatura.new('dragao', 150, 150)  
}

# São objetos únicos

puts "test".object_id
puts "test".object_id
puts :test.object_id
puts :test.object_id
