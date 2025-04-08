import my_functions as funcs


def test_add():
    assert funcs.add(1,2) == 3, "Addition failed"
    assert funcs.add(-3, -8), "Negative addition failed"

    
def test_subtract():
    assert funcs.subtract(8,2) == 6, "Subtract failed"
    assert funcs.subtract(-9, -6) == -3, "Negative subtract failed"
    
    
def test_multiply():
    assert funcs.multiply(6,3) == 18, "Multiplication failed"
    assert funcs.multiply(-3, -11) == 33, "Negative Multiplication failed"
    
    
def test_divide():
    assert funcs.divide(12,4) == 3, "Division failed"
    assert funcs.divide(-24, -6) == 4, "Negative divison failed"
    
    
if __name__ == "__main__":
    test_add()
    test_divide()
    test_multiply
    test_subtract