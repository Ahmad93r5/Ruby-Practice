# def greet (bahar) → Top-level method 
# class Student; def greet; end; end → Instance method 
# class Student; def self.greet; end; end → Class method 
# -------------------------------------------------------------------------------------------
# -------------------------------------------------------------------------------------------

                            #     Method
# 01
def hello
    puts "If Method not in the module it works without using class & Self"
end
hello

# 02
module Module_Name
def self.greet
    puts "simple method"
end
end
Module_Name.greet

# 03
def multiply (a, b)
     a * b
end
puts multiply(5,3)


# 04
def print_numbers(numbers)
  numbers.each do |num|
    puts num
  end
end
puts print_numbers([1,2,3,4,5,6,7])  


# 05
def student_info(student)
    puts "Name: #{student[:name]}"
    puts "Marks: #{student[:marks]}"
end
student={
    name: "Ali",
    marks: 85
}
puts student_info(student)


# 06
def calculate(number, operation)
  puts operation.call(number)
end

double = lambda do |n|
  n * 2
end

calculate(10, double)


#                                    Visibility & Classes

# Visibility Kind--> public, Private, Protected
# 001         PUBLIC
class Student
    def hello
        puts "public Class + Method in class + Instance used"
    end
end

student=Student.new
student.hello

# 002                PRIVATE
class Shop
    def item
     price
    end
end
    private
    def price
        puts "Privacy Of Shop"
    end
    shop = Shop.new
    shop.item

# ----------------------------------------------------------
# Class with Constructor
class Student
  def initialize(name)
    @name = name
  end

  def show
    puts @name
  end
end

student = Student.new("Ahmad")
student.show


# =======================================================INHERITANCE

class Animal
    def barks
        
        puts "Barks"
    end
end

class Dog < Animal 
end

dog = Dog.new
dog.barks

# ============================================================SUPER
# Parent ka method bhi chalana ho.

class Animal
  def sound
    puts "Animal Sound"
  end
end

class Dog < Animal
  def sound
    super
    puts "Bark"
  end
end

Dog.new.sound


# ================================================================Singleton
# Singleton class stores methods for only one object.
# Ruby ma 1 method ka 1 object instance work karta ha 




# def self.hello = class << Self
#01 amy class ma hr method ka sath self lagana parta ha is sa acha sary method ko
#  class << Self ma bana do pir hr method ka sath self. nai lagana pary ga 
#02 class << self mein instance isliye create nahi karte kyun ke self already class ko refer kar raha hota hai, object ko nahi. 

class Student
  class << self  
    def hello
      puts "Hello"
    end

    def bye
      puts "Bye"
    end
  end
end

Student.hello
Student.bye
