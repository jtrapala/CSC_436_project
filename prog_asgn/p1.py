import numpy as np
import json


# Develop a program that takes as input:
#   1 - A relation R with a set of attributes.
#       The number of attributes should be variable.
#   2 - A set of functional dependencies F that holds on R.
#       The number of functional dependencies should be variable.
# And your program should do the following:
#   1 - Find and print out the list of all possible
#       candidate keys,(not the superkeys), of R based on F.

# This function finds the candidate keys with the given inputs from main
def get_can_keys(table, f_dep, r_cand_keys):

    tbl = list(table.keys())
    print("Attributes from table1:", tbl)
    print(len(tbl))

    p = 0

    while p < len(tbl):
        # print(p)
        # Get all values assc with the attribute
        attr_val = list(table[tbl[p]])
        # print(attr_val)

        # New list to keep track of unique values under that attribute
        attr_unique = []

        for x in attr_val:
            if x not in attr_unique:
                attr_unique.append(x)

        print(attr_unique)

        # if(len(attr_unique) < len(tbl)):
        #   tbl.remove()

        p += 1


'''
    # Holds values that are the intersection of r's attributes and f_dep's attributes
    overlap_r_func = [value for value in r_attr if value in f_dep]

    # Array that holds candidate keys (r attributes that are unique)
    r_cand_keys = [val for val in overlap_r_func if val in r_unique]
    '''


# i think it works like this
# so two functions as if they were tables
# one function has x number of attributes
# the other has x number of attributes and some are the same as the first function
# then we go through and check which attributes over lap
# the ones that are unique in the first function are those attributes that can be candidate keys

# so testing both functions for repition then casting the uniques? so we can store them in a list then print them? checkmate
# yeah basically printing only the unique ones, dont pring the attributes that are in both functions
# also dont print the unique ones from the second table, only the canidate keys from the second function
# the superkeys are the unique values in the second table yes? no? but also maybe? but also doesnt matter for this assignment fair.


def main():

    with open('table.json') as table1:
        table1_dict = json.load(table1)

    # print(table1_dict)

    '''
        For functional dependecy AB->CD, use 

            f_dep = [['A','B'],['C','D']]

        This will print out as:
            
            Checking functional dependency: ['A', 'B'] -> ['C', 'D']  
    '''

    # f_dep is a 2x2 multivalue array
    f_dep = [['id', 'fname'], ['phone', 'address']]

    print("Checking functional dependency:", f_dep[0], "->", f_dep[1])
    # print(f_dep[1][1])

    # Holds candidate keys
    cand_keys = []

    get_can_keys(table1_dict, f_dep, cand_keys)

    # Print candidate keys that were found
    # for k in range(r_cand_keys):
    # print(r_cand_keys[k])


if __name__ == "__main__":
    main()
