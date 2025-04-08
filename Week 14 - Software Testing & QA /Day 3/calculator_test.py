from calculator import Calculator
import unittest

class CalculatorTestMethods(unittest.TestCase):

    def test_add(self):
        self.assertEqual(Calculator.add(5,4), 9)
    def test_subtract(self):
        self.assertEqual(Calculator.subtract(5,4), 1)
    def test_multiply(self):
        self.assertEqual(Calculator.multiply(5,4), 20)
    def test_divide(self):
        self.assertEqual(Calculator.divide(5,4), 1.25)
    def test_divide_by_zero(self):
        with self.assertRaises(ZeroDivisionError):
            Calculator.divide(5, 0)  # This should raise ZeroDivisionError


class otherTestMethods(unittest.TestCase):
    ## testing other asserts
    def test_add(self):
        self.assertIsInstance(3.0, float)
        self.assertIn(3, [3, 4, 5])
        
        
if __name__ == '__main__':
    unittest.main()