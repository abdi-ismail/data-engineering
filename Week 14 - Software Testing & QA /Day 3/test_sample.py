import pytest
from calculator import Calculator


def test_add():
    assert Calculator.add(5,4) == 9

def test_subtract():
    assert Calculator.subtract(5,4) == 1
    
def test_multiply():
    assert Calculator.multiply(5,4) == 20
    
def test_divide():
    assert Calculator.divide(5,4) == 1.25

def test_divide_by_zero():
    with pytest.raises(ZeroDivisionError):
        Calculator.divide(5, 0)


if __name__ == "__main__":
    pytest.main()
