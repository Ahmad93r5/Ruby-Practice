# Datatype Concersion / Casting
# syntax-->    value.to_datatype

# a -->array, r--> rational, c-->complex num, f--> float, s-->string, i-->integer

num = 5
floatnum = 3.14
stringNum = '111'

puts num.to_f
puts num.to_s

puts floatnum.to_i
puts floatnum.to_s

puts stringNum.to_i
puts stringNum.to_f
puts stringNum.to_r 
puts stringNum.to_c

puts 100 + "18+1i".to_c 