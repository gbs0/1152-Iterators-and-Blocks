# 1. TO-DO: Crie uma calculadora, que receba três parametros (x, y, operator) e retorne o resultado da operação
def normal_calculator(x, y, operator)
  case operator
  when "+"
    return x + y
  when "-"
    return x - y
  when "*"
    return x * y
  when "/"
    return x / y
  else
    return "Operação Inválida!"
  end
end

puts normal_calculator(56, 8,"+")
puts normal_calculator(56, 8,"-")
puts normal_calculator(56, 8,"*")
puts normal_calculator(56, 8,"/")
puts normal_calculator(56, 8,"%")

puts "---------------------------"

# 2. TODO: Crie uma calculadora com 'yield'!
def yield_calculator(x, y)
#   if block_given?
#     yield(x, y)
#   else
#     return "Operação Inválida!"
#   end
  block_given? ? yield(x, y) : "Operação Inválida!" 
end

# puts yield_calculator(56, 8) do |x, y|
#     x + y
#   end
puts yield_calculator(56, 8) { |x, y| x + y }
puts yield_calculator(56, 8) { |x, y| x - y }
puts yield_calculator(56, 8) { |x, y| x * y }
puts yield_calculator(56, 8) { |x, y| x / y }
puts yield_calculator(56, 8) { |x, y| x % y }
puts yield_calculator(56, 8)



def beautify_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name)
end

message = beautify_name("john", "lennnon") do |elemento|
  string = "olá #{elemento}"
  puts string
end
message = beautify_name("john", "lennnon") { |emento| puts elemento }
# puts message # => "Greetings John LENNON, you look quite fine today!"





