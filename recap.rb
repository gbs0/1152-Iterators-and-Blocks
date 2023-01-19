musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
# =>        0,              1,              , 2               ,3
def display(string)
  puts "#{string}"
end

# Utilizando o index, imprima no terminal o nome de cada músico:
display(musicians[0])
display(musicians[1])
display(musicians[2])
display(musicians[3])

numeros = (0..10).to_a
display(numeros[0])
display(numeros[1])
display(numeros[2])
display(numeros[3])
# ...