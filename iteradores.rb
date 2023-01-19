musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']

def display(string)
  puts "#{string}"
end

# Iterar sobre os músicos utilizando o INDEX e junto o FOR
for index in 0...musicians.size
  # Mostrar os artistas no terminal
#   display(musicians[index])
end

# Iterar sobre os músicos utilizando a própria string de dentro da Array
for artista in musicians
#   display(artista)
end

# Iterador #each
musicians.each do |artista|
  # Podemos escrever qualquer lógica em Ruby
  display("Olá #{artista}")
end

musicians.each { |artista| display(artista) }

# Iterador com #each_with_index
musicians.each_with_index do |artista, index|
#   display("#{index + 1} - #{artista}")
end

first_names = musicians.map do |artista|
  artista.split.first
end

# p first_names

artistas_com_r = musicians.count do |artista|
    # Condição de verdadeiro ou falso
    primeira_letra = artista.split.first[0]
    primeira_letra == "R" # true / false
end

# p artistas_com_r

artistas_com_n = musicians.select do |artista|
  # Retorna uma nova lista com os elementos que satisfazem a condição do bloco
    primeira_letra = artista.split.first[0]
    primeira_letra == "N"
end

p artistas_com_n
# Diferenças entre #each e #map
# pink_floyd = musicians.each do |artista|
#     # Podemos escrever qualquer lógica em Ruby
#     artista.upcase
# end

# p pink_floyd

# pink_floyd = musicians.map do |artista|
#     artista.upcase
# end

# p pink_floyd
