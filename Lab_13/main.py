from typing import List
from copy import copy
import random


def bubblesort(lst: List) ->List:
    lst_copy = copy(lst)
    for i in range(len(lst_copy) - 1):
        swapped = False
        for k in range(0, len(lst_copy) - 1 - i):
            if lst_copy[k] > lst_copy[k+1]:
                lst_copy[k], lst_copy[k + 1] = lst_copy[k + 1], lst_copy[k]
                swapped = True
        if not swapped:
            return lst_copy

    return lst_copy


