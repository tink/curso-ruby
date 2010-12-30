## Arrays

[]
[5]
['Olá', 'Tchau']

sabor = "Baunilha"
[89.9, sabor, [true, false]] # É possível armazenar diversos tipos diferentes de valores em um mesmo array

## Acessando os elementos do array

nomes = ['Ada', 'Belle', 'Chris', 'Anderson', 'Rafael']

puts nomes
puts nomes[0]
puts nomes[1]
puts nomes[2]
puts nomes[3]
puts nomes[4]
puts nomes[5]  #  Esse está fora do intervalo.

puts nomes[0..1]
puts nomes[1..3]
puts nomes[0, 2]
puts nomes[0, 3]
puts nomes[2, 3]

## Imprimindo arrays na tela

comidas = ['chocolate', 'brigadeiro', 'meio amargo']

puts comidas
puts comidas.to_s
puts comidas.join(', ')
puts comidas.join('  :)  ') + '  8)'

## Métodos úteis

favoritos = []
favoritos.push 'gotas de chuva em rosas' # Adiciona um elemento ao Array
puts favoritos
favoritos.push 'whisky em gatinhos'

puts favoritos[0] # Primeiro elemento de um Array
puts favoritos.first
puts favoritos[-1] # Último elemento de um Array
puts favoritos.last
puts favoritos.length # Tamanho de um Array

favoritos.unshift "cerejas com sorvete" # Adiciona elemento no inicio de um Array
puts favoritos
favoritos.unshift "café com café"
puts favoritos.size

puts favoritos.pop # Remove o último elemento
puts favoritos
puts favoritos.length

puts favoritos.shift # Remove o primeiro elemento
puts favoritos
puts favoritos.size

arr = [1,2,3,4,5]
puts arr
puts arr.reverse # Reverte a ordem dos elementos
puts arr
arr.reverse!
puts arr


arr = [1, 1, 2, 3, 4, 3, 4]
puts arr
puts arr.uniq # Retorna os elementos únicos
puts arr
arr.uniq!
puts arr

arr = [1,2]
puts arr + [3,4] # Cria um novo array com a soma dos dois arrays
puts arr
arr.concat [3,4] # Adiciona os elementos do parâmetro ao array existente
puts arr
arr = arr - [2,4] # Cria um novo array removendo a intersessão dos arrays
puts arr
