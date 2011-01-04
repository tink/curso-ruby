## Ranges
1..10  # Cria um intervalo de 1 a 10
1...10 # Cria um intervalo de 1 a 9

# Convertendo em um array

(1..10).to_a

# Não é restrito a valores numéricos 

'a'..'f'

## Métodos importantes

centena = 1..100 
centena.min           # Pega menor valor do intervalo 
centena.max           # Pega maior valor do intervalo 
centena.include?(59)  # Verifica se determinado valor está no intervalo

centena.reject { |atual| atual%2 != 0 } # Retorna todos os números pares no intervalo

centena.each { |valor| puts "Oi, eu sou o #{valor}" }

ano_atual = 95

case ano_atual
  when 50..59
    puts "We're living in the 50s!"
  when 60..69: "Pass with Merit"
    puts "We're living in the 60s!"
  when 70..79: "Pass with Distinction"
    puts "We're living in the 70s!"
  when 80..89: "Pass with Distinction"
    puts "We're living in the 80s!"
  when 90..99: "Pass with Distinction"
    puts "We're living in the 90s!"
  else 
    puts "We're living in an boring age"
end
