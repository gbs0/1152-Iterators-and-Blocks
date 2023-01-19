
# burguer = ['pao', recheio, molho, queijo, 'pao']

def make_burguer(recheio, molho, queijo)
#   carne = recheio.upcase
  if block_given?
    ['pao', yield(recheio), molho, queijo, 'pao']
  else
    ['pao', recheio, molho, queijo, 'pao']
  end
end

BIGGER_BURGUER = make_burguer("frango", "Ketchup", "prato") do |ingrediente|
  ingrediente.upcase
end

p BIGGER_BURGUER