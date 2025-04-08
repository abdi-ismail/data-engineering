import pytest
from edited_functions import *

def testFunction1():
    numbers = [2,7,4,1,9,5]
    assert FindMax(numbers) == 9
    
def testFunction2():
    pass


def check(mylist):
    seen = set()
    duplicates = []
    for i in mylist:
        if i in seen:
            duplicates.append(i)
        else:
            seen.add(i)
    if duplicates == []:
        return -1
    else:
        return duplicates[0]

    
mylist=[3, 4, 6, 3, 6]




a = [3, 4, 6, 3] # Output: 3
b = [7, 1, 5, 2, 5, 7] # Output: 5 (5 repeated first than 7)
c = [9, 8, 7, 6, 5]    # Output: -1
d = [2, 2, 3, 3, 4]   # Output: 2  
e = [10, 20, 30, 10, 20] # Output: 10 ( 10 repeated first than 20)

print(check(e))