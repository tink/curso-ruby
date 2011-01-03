## Hashes

{}
{'nome' => 'Anderson', 'sobrenome' => 'Dias'}
{:nome => 'Anderson', 'nome' => 'Dias'}

## Acessando elementos de um hash

dados = {'nome' => 'Anderson', 'sobrenome' => 'Dias'}
puts dados
puts dados['nome']
puts dados['idade']
dados['idade'] = 24
puts dados['idade']

## Métodos importantes

dados = {'nome' => 'Anderson', 'sobrenome' => 'Dias'}
puts dados.keys # Retorna um array com as chaves do hash
puts dados.value # Retorna um array com os valores
puts dados.length # Retorna a quantidade de elementos

puts a.key? 'nome' # Verifica se o hash contém a chave passada
puts a.has_key? :nome # Alias
puts a.value? 'Dias' # Verifica se o hash contém o valor passado
puts a.has_value? 'dias' # Alias

## Merge de hashes

dados = {'nome' => 'Anderson', 'sobrenome' => 'Dias'}
puts dados
dados.merge({'Nome' => 'Rafael'}) # Adiciona novo elemento ao hash; Chave 'Nome' é diferente da chave 'nome'
puts dados
dados.merge({'sobrenome' => 'D.'}) # Sobrepõe o valor da chave 'sobrenome'
puts dados

