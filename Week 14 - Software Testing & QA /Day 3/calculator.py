class Calculator:
    @staticmethod
    def add(a, b):
        return a + b

    @staticmethod
    def subtract(a, b):
        return a - b

    @staticmethod
    def multiply(a, b):
        return a * b

    @staticmethod
    def divide(a, b):
        # try:
        return a / b
        # except ZeroDivisionError:
        #     return ZeroDivisionError         


if __name__ == "__main__":
    
    a = 5
    b = 28

    print(Calculator.add(a,b),
        Calculator.subtract(a,b),
        Calculator.multiply(a,b),
        Calculator.divide(a,b)
    ) 