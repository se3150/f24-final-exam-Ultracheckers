import pytest
from brute import Brute
from unittest.mock import Mock, MagicMock
todo = pytest.mark.skip(reason='todo: pending spec')

def describe_Brute():

    @pytest.fixture
    def cracker():
        return Brute("TDD")

    def describe_bruteOnce():
        def it_returns_false_bad_guess(cracker):
            assert cracker.bruteOnce("bad attempt") == False

        def it_returns_true_correct_guess(cracker):
            assert cracker.bruteOnce("TDD") == True

        def it_works_even_with_empty_string():
            test = Brute("")
            assert test.bruteOnce("") == True

    def describe_bruteMany():
        def it_returns_after_success(cracker):
            assert cracker.bruteMany() != -1
        
        def it_returns_negative_one_when_timed_out():
            cracker = Brute("aijwfijafijawifjawifjaif")
            assert cracker.bruteMany(100) == -1
            
            
