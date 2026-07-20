# Datatypes 
# almost same datatypes except -->  , symbol, hashes

# 01
name = nil 
puts name


02                 
age = nil
if age == nil
    puts "Age is not Availble"
end

puts age
# ----------------------------------------------------------
# Hashes / like object
# Hash Ruby mein key-value pair store karta hai (JavaScript object ki tarah).
# is ma : ki jaga => ya use hota ha 

student ={
    "name"=> "ahmad",
    "age"=> 23
}
puts student["name"]
puts student["age"]


# ----------------------------------------------------------
# Symbols 
# Symbol   : se start hota hai. Ye ek lightweight identifier hota hai aur aksar hash keys ya labels ke liye use hota hai.
# symbol ka syntax : ya ha bs not like a object 


# Symbol example with hashes

CarName ={
    "name": "Honda CIty",
    "model": 2027
}
puts CarName[:name]
puts CarName[:model]
