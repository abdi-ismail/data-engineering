## Object oriented programming

# Class => template to create objects

class FactoryCar:
    def __init__(self, make, model, colour):
        self.make = make # self.make refers to the property of the class
        self.model = model
        self.colour = colour
        self.speed = 0
        
    def startEngine(self):
        print(f"{self.model} engine has started")
    def stopEngine(self):
        print(f"{self.model} engine stopped")
    def accelerate(self):
        self.speed += 10

        
          
car1= FactoryCar("toyota", "prius", "red")
car2 = FactoryCar("vauxhall", "mokka", "blue")
# print(car1.colour)
# car1.colour = "blue"
# print(car1.colour, car2.colour)



# car1.startEngine()
# car2.stopEngine()

# car1.accelerate()
# car1.accelerate()

# print(car1.speed)


## You are going to create an employee class
#properies: name, age, city and role
#methods: fire, birthday(increment age)


class Employee:
    def __init__(self, name, age, role, city):
        self.name = name
        self.age = age
        self.role = role
        self.city = city
        
    def birthday(self):
        self.age += 1
        
    def fire(self):
        print(f"{self.name} is fired")
    
    def promote(self, new_role):
        self.role = new_role
        return f"{self.name} has been promoted to {self.role}"
        # Create static mehtods: you can use mehtod directly without creating an object
    @staticmethod
    def isFullTime(workingHours):
        if workingHours > 25:
            return True
        return False
        
employee1 = Employee("Tom", 18, "Manager", "Bristol")
employee2 = Employee("Beth", 24, "Regional Manager", "London")

# print(employee1.age)
# employee1.birthday()
# print(employee1.age)
# employee1.fire() 
# print(employee2.__dict__.values())

# print(employee2.role)
# print(employee2.promote("CEO"))


print(Employee.isFullTime(5))
