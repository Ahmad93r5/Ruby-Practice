 #                                        BLOCKS, PROCS, LAMBDA
# BLock
# block kabi save nai hota ha 
# (do) sa agy wala part block hota ha 
# e.g  
nums = [1,2,3,4]
nums.each do |num|
   puts num if num < 3
end

# -----------------------------------------
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

# -----------------------------------------
# 001
greet = Proc.new do
  puts "Hello Ahmad"
end
greet.call

# -----------------------------------------
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
# Lambda ek method ki tarah hoti hai, lekin uska naam nahi hota.
#  Hum usay variable mein store karte hain aur baad mein .call se chalate hain.

# -----------------------------------------
# 0001
multiply = lambda do |num| 
num * 2
end
puts multiply.call(5)

# -----------------------------------------
# 002
add = lambda do |a, b|
  puts a + b
end

add.call(10, 20)


# -----------------------------------------
# 0003
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
