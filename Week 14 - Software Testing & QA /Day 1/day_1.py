def add_two():
    while True:
        try:
            value_1 = int(input("What will the first value be?: "))
            value_2 = int(input("What will the second value be?: "))
            print(value_1 + value_2)
        except ValueError:
            print("ValueError: Value must be an integer!")
        else:
            break

# add_two()

# my_list = [4, 8, 2, 7, 8]

# try:
#     my_list[8]
# except IndexError:
#     print("out of range")
# else:
#     print("no issues")
# print("script complete")



## create some code that divides two user inputed numbers
## create exceptions to handle any errors

def divide():
    """A function that takes two numerical values and divides the first value by the second

    Returns:
        int: result
    """
    try:
        a = int(input("What will the first value be?: "))
        b = int(input("What will the second value be?: "))
        ans = a/b
    except ValueError as e:
        print(f"{e}:\nPlease enter an integer")
    except ZeroDivisionError as e:
        print(f"{e}:\nYou can't divide by zero")
    else:
        return ans


# print(divide())

## creating a function to open a file

def  file_opener(filename):
    """A funt that will open a specified file"""
    try: 
            with open(filename, "r") as file:
                contents = file.read()
            print(f"File contents: {contents}")
    except FileNotFoundError as e:
        print(f"{e}: Please enter the correct filename")
    else:
        print("File read successfully")
    
# file_opener("open_mr.txt")


def read_file(filename):
    try:
        file = open(filename, "r")
        content = file.read().split("\n")
        return content[2]
    except FileNotFoundError:
        print("File not found!")
    except IndexError as e:
        print(f"{e}")
    finally:
        print("Closing file...")
        if 'file' in locals() and not file.closed:
            file.close()

print(read_file("open_me.txt"))
