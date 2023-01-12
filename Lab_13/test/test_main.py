import pytest
from main import bubblesort

def test_bubblesort():
    lst = [100,0,10,2,5,1,5]
    lst_sorted = [0,1,2,5,5,10,100]
    assert lst_sorted == bubblesort(lst)