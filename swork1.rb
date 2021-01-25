################ Single Responsibility principle ###############
class SignUp
    def initialize(id, name)
        @id = id 
        @name = name   
    end

    def NewUser
        puts "Hello #{@name} and your ID is #{@id}"
    end
end

userOne = SignUp.new(24, "Jerick")
puts userOne.NewUser

################ Open/Closed principle ###############
class Position  
    def initialize(name)
        @name = name
    end
end
  
class Software_Engineer < Position
    def softwareEng
        puts "#{@name} is a software engineer" 
    end
end
  
class Software_Developer < Position
    def softwareEng
        puts "#{@name} is a software developer" 
    end
end
  
puts Software_Engineer.new("Jerick Camacho").softwareEng
puts Software_Developer.new("Jerick").softwareEng

################ Liskov Substitution principle ###############
class Classification
    def to_s       
      "I\'m a human being! :) "
    end
end
  
class Animal < Classification
    def to_s
      "I\'m animal! :) "
    end
end
  
class Things < Classification
    def to_s
      "I\'m a ballpen! :) "
    end
end
  
class Universe
    def greet(earth)
      puts earth
    end
end
  
Universe.new.greet(Classification.new)
Universe.new.greet(Animal.new)
Universe.new.greet(Things.new)

################ Dependency Inversion principle ###############
class Admin
    def employees
      puts "Employees Access"
    end
  
    def intruders
      puts "not employee/no account"
    end
end
  
class Employee
    def access
      Admin.new.employees
    end
end
  
class NotEmployee
    def access
      Admin.new.intruders
    end
end
  
Employee.new.access
NotEmployee.new.access
