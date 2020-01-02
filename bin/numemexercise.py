#!/bin/env python2
import random


def getRandomString(digit_number):
    digits = ""

    for i in range(digit_number):
        digits = digits + str(random.randint(0, 9))
    return digits

if __name__ == '__main__':

    string_numbers = 5
    digit_number = 12
    for i in range(string_numbers):
        print getRandomString(digit_number)
