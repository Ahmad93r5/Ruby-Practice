# INterpolation same as literals
# in interploation we use # instead of $ 

# Difference:: Agr Double quotes ka ander kayn gay to work kary ga if use single ''  its not working 

name = "Ahmad"

puts "Hello #{name}"  
puts 'Hello #{name}'   

# 02
name = "Ahmad"
age = 23
puts "Hello #{name.upcase}, Next year your age will be #{age + 1}"

# 03
# example with hash

Vehical = {
    name:"Accord"
    
}
puts "Buy a Honda #{Vehical[:name]}"
