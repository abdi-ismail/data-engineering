import random


def guessing_game()->None:
    '''
    A guessing game where you will try to guess the integer 
    generated between 0 and the value you provide
    '''
    while True:
        try:
            max = int(input("What will the maximum value be?: "))
            assert max > 0, "Value must be greater than 0"
            assert max % 2 == 0, "Value must be even"
        except AssertionError as e:
            print(f"{e}")
        except ValueError as e:
            print(f"{e}")
        else:
            break
            
    target = random.randint(0, max)
    
    guess = max + 1
    counter = 0

    while target != guess:
        counter += 1
        while True:
                    try:
                        guess = int(input("What number would you like to guess?: "))
                    except ValueError as e:
                        print(f"{e}")
                        counter +=1
                    else:
                        break

        if guess > target:
            print("Guess too high")
        elif guess < target:
            print("Guess too low")

    print(f"Good job, you got the right number in {counter} guesses!")

# guessing_game()


##Assert statements

# assert 5 < 4

# my_list = [56, 92, 65, 40]

# assert len(my_list) == 5, "list must be 5"

##create a club entry function, where it will ask for someone's age, check if they're 18 or over, if they are return "you may enter", if not "access denied"17


def clubentry():
    while True:
        try:
            age = int(input("What is your age?"))
            assert age >= 18
        except AssertionError:
            print("Access denied")
        except ValueError as e:
            print(f"{e}")
        else:
            print("You may enter!")
            break
        

# clubentry()


def isEmpty(list):
    try:
        assert len(list) > 0, "list must contain at least one element"
        print(list[0])
    except AssertionError as e:
        print(f"{e}")
    except IndexError as e:
        print(f"{e}")
       


# alist = []
# blist = [1, 2, 3]

# isEmpty(alist)
# print()
# isEmpty(blist)

##create our own exception

class NegativeNumberError(Exception):
    """Custom exception for checking negative numbers"""
    def __init__(self, message="NegativeNumberError: Numbers must be positive"):
        self.message = message
        super().__init__(self.message)


def check_positive(n):
    if n < 0:
        raise NegativeNumberError()

# check_positive(-3)



def guessing_game()->None:
    '''
    A guessing game where you will try to guess the integer 
    generated between 0 and the value you provide
    '''
    while True:
        try:
            max = int(input("What will the maximum value be?: "))
            ## implementing custom error into guessing_game
            check_positive(max)
            assert max % 2 == 0, "Value must be even"
        except NegativeNumberError as e:
            print(f"{e}")
            max = max * -1
            break
        except AssertionError as e:
            print(f"{e}")
        except ValueError as e:
            print(f"{e}")
        else:
            break
            
    target = random.randint(0, max)
    
    guess = max + 1
    counter = 0

    while target != guess:
        counter += 1
        while True:
                    try:
                        guess = int(input("What number would you like to guess?: "))
                    except ValueError as e:
                        print(f"{e}")
                        counter +=1
                    else:
                        break

        if guess > target:
            print("Guess too high")
        elif guess < target:
            print("Guess too low")

    print(f"Good job, you got the right number in {counter} guesses!")

# guessing_game()