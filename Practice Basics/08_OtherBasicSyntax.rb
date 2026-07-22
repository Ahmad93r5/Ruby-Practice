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
# Ruby mein blocks bohot important hain. & ya save nai hoty haan

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
# Yahan block save nahi hua, sirf block ka result save hua.


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
# Yahan block save nahi hua, sirf block ka result save hua.




# 16
 #                                        BLOCKS, PROCS, LAMDA
# BLock
# block kabi save nai hota ha 
# do sa agy wala part block hota ha 
# e.g  
nums = [1,2,3,4]
nums.each do |num|
   puts num if num < 3
end
# e.g2
number= nums.each do |num|
puts num if num > 4
end
# is ma be just value save horahh  ha lakin block save nai ho raha ha 
 
                                                          #  Proc VS Lamda

# Lamda ma agr hum 2 parameter pass kar rahy haan or argumnet 2 sa zayda da rahy haan tu wo exact error baty ga (work like method) or agr 2 para haan or 1 argu ha tu tb nai chaly ga
# Proc ma agr hum 2 parameter pass kar rahy haan or argumnet 2 sa zayda da rahy haan tu method chaly ga or 2 sa zyada walao ko ignore kr dy ga & agr 1 argu hoga tu chaly ga lakin undefined dady ga

# lamda ma agr return use karty haan tu wo return ka baad wali printing be chlata ha 
# proc ma retun use karty haan tu wo just retun wali print kary ga us sa next walii ko ignore kr dy ga
# --------------------------------------------------------------------------------------------------------------------------

# proc
# Block ko save krnay ka lia proc use krty haan
# 001
greet = Proc.new do
  puts "Hello Ahmad"
end
greet.call


# 002
# pasing parameter in proc
def number_process (number, operation)
  number.each do|num|
  puts operation.call(num)
  end
end

double = Proc.new do |n|  n*2 end
numbers = [10,20,30]
number_process(numbers, double)


# Lamda
# 0001
multiply = lambda do |num| 
num * 2
end
puts multiply.call(5)

# 0002
students = [
  { name: "Ahmad", marks: 70 },
  { name: "Ali", marks: 40 },
  { name: "Usman", marks: 85 }
]

def check_students(students, operation)
  students.each do |student|
     operation.call(student)
  end
end

result = lambda do |student|
  if student[:marks] >= 50
    puts "#{student[:name]} passed"
  else
puts "#{student[:name]} Failed"  
end
end 

check_students(students, result)


# 17 
# Instance Method +self use
# instance 1 object ha jo class sa create hota ha 
class Student
  def hello
    puts self
  end
end

s = Student.new  // ya pa s  1 instance ha 
s.hello






