#!/bin/python3

import sys

def to_full_bytes(a):
    min_bits = a.bit_length()
    full_bits = ((min_bits + 7) & (-8)) 
    underscores = (full_bits // 4) - 1 # underscores after each 4 bit except the last
    return '{:0{}_b}'.format(a, full_bits + underscores)

def printDecHexBinary(num):
    # print("{: <10} {: <10} {: <10}".format(num, hex(num), bin(num)))
    print("{: <10} {: <10} {: <10}".format(num, hex(num), to_full_bytes(num)))

def main():
    for i, arg in enumerate(sys.argv):
        if (i == 0): 
            # table header
            print("{: <10} {: <10} {: <10}".format("Decimal", "Hex", "Binary"))
            print("{: <10} {: <10} {: <10}".format("----------", "----------", "----------"))
        else:
            # rows
            num = int(arg, 0)
            printDecHexBinary(num)


if __name__ == "__main__":
    main()

