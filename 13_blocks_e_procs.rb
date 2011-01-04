## Blocks e Procs

# Definindo um Proc
saudacao = Proc.new do
  puts 'Olá!'
end

saudacao.call
saudacao.call
saudacao.call

# Passando parâmetros

voce_gosta_de = Proc.new do |uma_boa_coisa|
  puts "Eu *realmente* gosto de #{uma_boa_coisa}!"
end

voce_gosta_de.call 'chocolate'
voce_gosta_de.call 'ruby'

# métodos que recebem procs

def faca_algo_importante uma_proc
  puts 'Todo mundo apenas ESPERE! Eu tenho uma coisa a fazer...'
  uma_proc.call
  puts 'Certo pessoal, Eu terminei. Voltem a fazer o que estavam fazendo.'
end

diga_ola = Proc.new do
  puts 'olá'
end

diga_tchau = Proc.new do
  puts 'tchau'
end

faca_algo_importante diga_ola
faca_algo_importante diga_tchau

# Métodos que retornam procs

def compor proc1, proc2
  Proc.new do |x|
    proc2.call(proc1.call(x))
  end
end

quadrado = Proc.new do |x|
  x * x
end

dobre = Proc.new do |x|
  x + x
end

dobre_e_eleve = compor dobre, quadrado
eleve_e_dobre = compor quadrado, dobre

puts dobre_e_eleve.call(5)
puts eleve_e_dobre.call(5)

# Métodos recebem blocos

def sumario descricao, &bloco
  tempo_inicial = Time.now
  bloco.call
  duracao = Time.now - tempo_inicial
  puts "#{descricao}: #{duracao.to_s} segundos"
end

sumario 'dobrando 25000 vezes' do
  numero = 1
  25000.times do
    numero += numero
  end
  puts numero.to_s.length.to_s + ' dígitos'
end

sumario 'contando até um milhão' do
  numero = 0
  1000000.times do
    numero = numero + 1
  end
end

# yield

def sumario descricao
  tempo_inicial = Time.now
  yield
  duracao = Time.now - tempo_inicial
  puts "#{descricao}: #{duracao.to_s} segundos"
end

sumario 'dobrando 25000 vezes' do
  numero = 1
  25000.times do
    numero += numero
  end
  puts numero.to_s.length.to_s + ' dígitos'
end

sumario 'contando até um milhão' do
  numero = 0
  1000000.times do
    numero = numero + 1
  end
end
