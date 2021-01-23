#Encapsulation
class AddTwoAges
    def initialize(age1, age2)
        @age1= age1
        @age2 = age2
    end

    def total
        @age1 + @age2 
    end
end

sum = AddTwoAges.new(25,35)
p sum.total

#Abstraction
class GetAge
    def initialize(name, add_age = false)
        @name = name 
        @add_age = add_age
        @age = 25 
    end

    def nowAge
        p @age + newAge
    end

    def newAge
        insert_age = @add_age ? 0 : 0
    end
end

currentAge = GetAge.new("Jerick", true)
p currentAge.nowAge 

#Polymorphism using Inheritance 
class Person 
    def initialize(first, last, age)
        @first_name = first
        @last_name = last
        @age = age
    end 
end
    
    def birthday
        @age += 1
    end
    
    def introduce
        p "Hi everyone. My name is #{@first_name} #{@last_name}"
    end
    
class Student < Person 
    def introduce 
        p "Hello Teacher. My names is #{@first_name} #{@last_name} My age is #{@age}"
    end
end    

class Teacher < Person
    def introduce 
        p "Hello class. My name is #{@first_name} #{@last_name} My age is #{@age}"
    end
end 

Jerick = Student.new("Jerick", "Camacho", 25)
Jerick.introduce

Kevin = Teacher.new("Kevin", "Basina", 25)
Kevin.introduce

#Polymorphism using Duck-Typing 
class Programmer
    def type(position)
        position.type
    end 
end 

class JuniorDev
    def type
        p "We are Bagito Developer"
    end 
end

class SeniorDev
    def type
        p "We are Legendary"
    end
end

programmer = Programmer.new
junior = JuniorDev.new 
senior = SeniorDev.new

programmer.type(junior)
programmer.type(senior)
