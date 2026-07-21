# p
# Debugging ke liye.

p "Hello"
p [1,2,3]


# Getting Input   
# gets keyword use hota
# User se input lena.


puts "Enter your name"
name = gets
puts name



# gets Enter (\n) bhi save kar leta hai.
# gets.chomp
# next line pa jany sa rookta ha
# name = gets.chomp

# Example
puts "Name"
name = gets.chomp
puts "Hello #{name} How are"


# IF Else statement
# same wasy he bs last ma end lihkna

age = 15

if age >= 18
  puts "Adult"
else
  puts "Child"
end



# Methods
# Function ko Ruby mein Method kehte hain.

def greet
  puts "Hello"
end
greet


# Parameters pass krna 

def greet(name)
    puts "Hello #{name}"
end
# argument ko "double  quots" ma pass karyn gyn
greet("Ali- argument dia ha parameter ka") 


# Arrays
# Ek variable mein multiple values store karne ke liye.

fruits = ["Apple", "Mango", "Banana"]

puts fruits[0]
puts fruits[1]


# Each Loop
# Array ke har element par loop chalata hai.

fruitNames = ["Apple", "Mango", "Banana"]
fruitNames.each do |fruit|
    puts fruit
end


# Basic structure Ruby ka

name = "Ahmad"
puts "Hello #{name}"

if name == "Ahmad"
  puts "Welcome"
end

def greet(name)
  puts "Hi #{name}"
end

greet(name)

# -------------------------------------------------------------------------------------------------
# 01
#                                              end (Sabse Important)
# Ruby mein {} ki jagah end use hota hai.
# Ye if, def, class, module, do, while sab ke end par likhte hain.

# JavaScript:-:

if (age >= 18) {
   console.log("Adult");
}

# Ruby:-:

if age >= 18
  puts "Adult"
end

# 02
# Parentheses Optional
# Ruby mein brackets () optional hote hain.

puts("Hello")
# Ya
puts "Hello"


# 03
# Semicolon (;) ki Zarurat Nahi

# Ruby:-:

a = 10
b = 20


# 04
# Curly Braces ki Jagah Indentation means ka just logic lihk do read krnay ma easy hota

if age > 18
  puts "Adult"
end

# 05
# No Data Type Declaration

# Java:-:
String name = "Ahmad";
# Ruby:-:
name = "Ahmad"

# 06
# Symbols (:)
# Ye Ruby ka unique feature hai.
# object ma cheezo ko access krnay ka lia

:name
:age
:city

# Mostly Hashes mein use hote hain.

student = {
  name: "Ahmad",
  age: 22
}

# Access

puts student[:name]

# 07
#                                              Multiple Assignment
# Ruby ka bohot famous feature.

a, b = 10, 20

puts a
puts b


# 08
# Range (.. aur ...)

# Inclusive -- agr 2 dot hoon gay tu (start value sa end value tb sb sahmil hoon gayn )
1..5
# Matlab
1 2 3 4 5

# Exclusive -- agr 3 dot hoon gay tu (start value sa end value tb sb sahmil hoon EXCEPT end value (wo nai hogi))
1...5
# Matlab
1 2 3 4

# Example

(1..5).each do |i|
  puts i
end


# 09

# Times Loop
5.times do
  puts "Hello"
end 
#  ya Hello ko 5 time print kary ga seperate line ma



# 10
# Unless   (unless keyword ! is ka equielent ha)
# Ye Ruby ka special keyword hai.

age = 15

unless age >= 18
  puts "Child"
end


# 11
# Predicate Methods (?)
# Ruby mein jo methods true ya false return karti hain unke end mein aksar ? hota hai.

name = "Ahmad"
puts name.empty?

# Output-- false


# 12
                                #  Blocks (do...end)
# Ruby mein blocks bohot important hain.

3.times do
  puts "Ruby"
end

# Ya
3.times { puts "Ruby" }
# Dono same hain.

# 13
# Pipes (| |)
# Ye block ke parameters hote hain.

numbers = [1,2,3,4,8,10,15,12,16,17]

numbers.each do |num|
  puts num
end


# 14
# map ⭐
# Har value ko change karke new array return karta hai.

answer = numbers.map do |num|
  num * 2
end
puts answer


# 15
# select
# Condition true wali values return karta hai.

result = numbers.select do |num|
  num > 15
end
puts result

#  ya pir
numbers.each do |num|
  puts num if num > 15
end
