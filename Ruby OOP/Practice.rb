# module Eat
#     def eating
#         puts "Animal Eating"
#     end

# end
# module Bark
#     def barking
#         puts "Animal Barking"
#     end
# end

# class Animal
#   extend Eat
#   extend Bark
# end

# Animal.eating


# ----------------------------------------------------------------------------
# module Authentication
#   def login(name)
#     puts "#{name}: login Successfully"
#   end
#   def logout(name)
#     puts "#{name}: logout Successfully"
#   end
# end
#     class Student
#       include Authentication
#     end
#     class Teacher
#       include Authentication
#     end

#     s = Student.new
#     t = Teacher.new
#     s.login("Ali")
#     t.logout("Ayesha")
# ---------------------------------------

module Application
  def appVersion
    puts "version io.22"
  end
end

class Control
  extend Application
end
Control.appVersion