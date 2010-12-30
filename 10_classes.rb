## Classes e objetos
# Em Ruby todo objeto possui uma classe

nil.class
true.class
false.class
//.class

# Objetos são criados com new

String.new == ''
Array.new == []

# Classe Time

agora = Time.new
depois = agora + 60

puts agora
puts depois

# Classe Hash

monstrosArray = []  #  o mesmo que Array.new
monstrosHash  = {}  #  o mesmo que Hash.new

monstrosArray[0]         = 'coelho'
monstrosArray[1]         = 'urso'
monstrosArray[2]         = 'dragão'
monstrosHash['fraco']  = 'coelho'
monstrosHash['normal']  = 'urso'
monstrosHash['forte'] = 'dragão'

monstrosArray.each do |nome|
  puts nome
end

monstrosHash.each do |forca, nome|
  puts forca + ':  ' + nome
end

# Criando suas classes

class Dado
  def rolar
    1 + rand(6)
  end
end

#  Vamos fazer dois dados...
dados = [Dado.new, Dado.new]

#  ...e rolar cada um deles.
dados.each do |dado|
  puts dado.rolar
end

# Variáveis de instância

class Dado
  def rolar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrado
    @numeroMostrado
  end
end

dado = Dado.new
dado.rolar
puts dado.mostrado
dado.rolar
puts dado.mostrado

#  Já que eu não vou mais usar esse dado,
#  eu não preciso salvá-lo em uma variável.
puts Dado.new.mostrado

# initialize

class Dado
  def initialize
    rolar
  end

  def rolar
    @numeroMostrado = 1 + rand(6)
  end

  def mostrado
    @numeroMostrado
  end
end

puts Dado.new.mostrado

# avançando

class Criatura
  def initialize(nome, vida, forca)
    @nome = nome
    @vida = vida
    @forca = forca
  end
    
  def morto?
    @vida <= 0
  end
  
  def perde_vida(pontos)
    @vida -= pontos
    puts "#{nome} agora está morto." if morto?
  end
  
  def atacar(oponente)
    if morto?
      puts "Você está morto demais pra atacar #{oponente.nome}."
      return
    end
    if oponente.morto?
      puts "#{oponente.nome} está morto. Procure outra pessoa pra brigar."
      return
    end
    
    pontos = rand @forca
    puts "Você tirou #{pontos} pontos de vida de #{oponente.nome}!"
    oponente.perde_vida(pontos)
  end
end

coelho = Criatura.new 'coelho', 30, 30
dragao = Criatura.new 'dragao', 150, 150

coelho.atacar dragao #vai dar erro! não existe método nome!

class Criatura
  def nome
    @nome
  end
end

coelho.atacar dragao #agora vai!

# extendendo classes

class Coelho < Criatura
  def initialize
    super('coelho', 30, 30)
    puts 'Bravo coelho acaba de nascer!'
  end
  
  def perde_vida(pontos)
    puts 'coelhos são muito resistentes!'
    super(pontos - rand(5))
  end
end

class Dragao < Criatura
  def initialize
    super('dragao', 150, 150)
    puts 'Dragão furioso acordou!'
  end
end

coelho = Coelho.new
dragao = Dragao.new

coelho.atacar dragao
