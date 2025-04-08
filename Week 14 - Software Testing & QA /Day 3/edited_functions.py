# Function 1: Find the maximum number in one array of integers
def FindMax(numbers):
    max = numbers[0]
    for number in numbers:
        if number > max:
            max = number
    return max


# Function 2: Sum array elements
def SumArray(numbers):
    sum = 0
    for number in numbers:
        sum += number
    return sum

# Function 3: Reverse a string
def ReverseString(input):
    charArray = list(input)
    charArray.reverse()
    return ''.join(charArray)


# Function 5: Count even numbers in an array
def CountEvenNumbers(numbers):
    count = 0
    for number in numbers:
        if number % 2 == 0:
            count += 1
    return count


# Function 6: Check if a string is a palindrome
def IsPalindrome(input):
    length = len(input)
    for i in range(length // 2):
        if input[i] != input[length - i - 1]:
            return False
    return True


# Function 7: Power calculation (baseNum raised to exponent)
def Power(baseNum, exponent):
    result = 1
    for i in range(exponent):
        result *= baseNum
    return result

# Function 8: Sort an array
def SortArray(numbers):
    for i in range(len(numbers)):
        for j in range(len(numbers)):
            if numbers[i] > numbers[j]:
                temp = numbers[i]
                numbers[i] = numbers[j]
                numbers[j] = temp
    return numbers

# Function 9: Count character occurrences in a string
def CountCharacterOccurrences(input, character):
    count = 0
    for c in input:
        if c == character:
            count += 1
    return count

