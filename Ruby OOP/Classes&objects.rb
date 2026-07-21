# ::Module ma kya kya hosahkta ha !

# 01 Module banana
# 02 Method banana
# 03 Fixed value rakhna (Ruby ma const capital letter ma lihktay haan & module ma sa const ki value lanay ka lia :: use krty )
# 03 Constant use karna
# 04 methods add ya purane change karna (means ka changing kr sahkty haan)
# 05 Agr same methid name hoon tu-> Purana overwrite ho jata hai
# 06 Ek method ka doosra naam banana (BY using alias)
# 07 Method hata dena

# 00 method ma argument pass krna

# 01
module ModuleName
end

# 02
# module ma method ko chalany ya call krnay ka lia ya tu self use karo ya pir class bana ka object sa call karo
module CreateMethodInModule
    def self.hello
        puts "Hi Ahmad"
    end

    def bye
        puts "Bye Ahmad"
    end
end

## call method by creating class
class ForPrintMethod
    include CreateMethodInModule
end
obj = ForPrintMethod.new
obj.bye

## call method with self
CreateMethodInModule.hello


# 03
# Module ma const rahkna 
module FixValue
    NAME = "multiple const be rahk shkty haan"
    AGE = 23
    CITY = "Toronto"
end
puts FixValue::NAME
puts FixValue::AGE
puts FixValue::CITY

# 05
# Agar same method dobara likh do to purana replace ho jata hai.

module FirstModule
    def self.hello
        puts "old name"
    end

    def self.hello
        puts "new Name"
    end
end
FirstModule.hello

# 06
# 1 mehtod ka 2nd name be bana sahkty haan or 2nd sa call be kr sahkty haan
# agr self. use kr ka alias use krty ho t alias sa phaly sigleton method lagana hoaga
#  By using Alias


module DoubleMethodName
    class<<self
      def hello
        puts "CAll the method with 2nd same"
      end
      alias greet hello
    end  
end
DoubleMethodName.greet
DoubleMethodName.hello



# 07
# Method ko remove krna 

module MyModule
  def hello
    puts "Hello"
  end

  remove_method :hello
end


# 00
#  method ma argument pass krna

def FuntionName (v1, v2)
   puts "#{v1} #{v2}"
end
FuntionName(20, "sdfsd")
