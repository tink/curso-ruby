## while

coelho = rand 50
dragao = rand 1000

while coelho > 0 && dragao > 0
  puts 'Atacar o dragão com quanta força?'
  forca = gets.to_i
  pontos_coelho = rand forca
  dragao -= pontos_coelho
  puts "Você tirou #{pontos} do dragão!"
  pontos_dragao = rand(forca * 10)
  coelho -= pontos_dragao
  puts "O dragão tirou #{pontos} de você!"
end

puts "Você perdeu! =(" if coelho <= 0
puts "Você venceu! =)" if dragao <= 0
