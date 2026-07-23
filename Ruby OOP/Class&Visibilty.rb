
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
