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


# MIXIN                                            INCLUDE vs eXTEND
#                  Ruby ne dono diye hain. Kabhi functionality har object ko deni hoti hai, aur kabhi sirf class ko.

# Bank ma hr user na login krna hota ha islia user1, user2, ... hr user login kr sakta ha or jb 
#  Sirf class ko information deni hai to extend use krty haan ya object create nai krta ha 


# A mixin is the process of adding a module's methods into a class using include or extend.
# Mixin ka matlab hai module ke methods ko kisi class mein use karna, bina inheritance ke.
# INclude ma hum object yani instance sa call krty haan 
# include keyword sa hum multiple module ko use kr shkty haan -- Lets do this in example

# 01
module Eat
    def eating
        puts "Animal Eating"
    end
end
module Bark
    def barking
        puts "Animal Barking"
    end
end

class Animal
  include Eat
  include Bark
end
a = Animal.new
a.eating
a.barking
# --------------------------------------------------------------------
# 02
module Authentication
  def login(name)
    puts "#{name}: login Successfully"
  end
  def logout(name)
    puts "#{name}: logout Successfully"
  end
end
    class Student
      include Authentication
    end
    class Teacher
      include Authentication
    end

    s = Student.new
    t = Teacher.new
    s.login("Ali")
    t.logout("Ayesha")



# Extend
# extend ma hum class sa call krty haan 

#01
module Eat
    def eating
        puts "Animal Eating Using Extend"
    end
end
module Bark
    def barking
        puts "Animal Barking Using Extend"
    end
end

class Animal
  extend Eat
  extend Bark
end
Animal.eating
# ------------------------------------------------------
# 02

module Application
  def appVersion
    puts "version io.22"
  end
end

class Control
  extend Application
end
Control.appVersion
