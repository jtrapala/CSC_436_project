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

# (Not correct?) This function finds the candidate keys with the given inputs from main
def test_get_can_keys(table, f_dep, r_cand_keys):

    # Make a list of keys from the table dictionary
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


# Reference used:
# https://www.geeksforgeeks.org/finding-attribute-closure-and-candidate-keys-using-functional-dependencies/
# https://stackoverflow.com/questions/2718420/candidate-keys-from-functional-dependencies
# https://cs.stackexchange.com/questions/109975/find-candidate-keys-given-functional-dependencies
# this seems helpful https://opentextbc.ca/dbdesign01/chapter/chapter-12-normalization/

def get_can_keys(r_attr, f_dep, cand_keys):
    print("help pls")

    '''print(f_dep[0][0][0])

    print(len(f_dep))  # total
    print(f_dep[0])  #
    print(f_dep[0][0])
    for u in range(len(r_attr)):
        if r_attr[u] not in f_left:
            cand_keys.append(r_attr[u])

    # print(cand_keys)'''


def right_side(f_dep, flg):
    f_right = []

    for p in range(len(f_dep)):
        if(flg == 1):
            if (f_dep[p][0] not in f_right):
                f_right.append(f_dep[p][1])
        else:
            f_right.append(f_dep[p][1])
    if(flg == 1):
        print("Right unique side:", f_right)
    else:
        print("Right side:", f_right)
    return f_right


def left_side(f_dep, flg):
    f_left = []

    for p in range(len(f_dep)):
        if(flg == 1):
            if(f_dep[p][0] not in f_left):
                f_left.append(f_dep[p][0])
        else:
            f_left.append(f_dep[p][0])
    if(flg == 1):
        print("Left unique side:", f_left)
    else:
        print("Left side:", f_left)

    return f_left


def no_side(r_attr, left_fdep, right_fdep):

    non = []

    print(left_fdep[0])
    for p in range(len(r_attr)):
        # Assume left side and right side are same length

        if ((r_attr[p] not in left_fdep[i]) and (r_attr[p] not in right_fdep[i])):
            non.append(r_attr[p])
    print("No side:", non)
    return non


def main():

    # with open('table.json') as table1:
    #   table1_dict = json.load(table1)

    # print(table1_dict)
    '''
        For functional dependecy AB->CD, use

            f_dep = [['A','B'],['C','D']]

        This will print out as:

            Checking functional dependency: ['A', 'B'] -> ['C', 'D']
    '''

    r_attr = ['A', 'B', 'C', 'D', 'E', 'F']

    # f_dep is a 3x2 multivalue array
    f_dep = [[['A', 'B', 'C'], ['D', 'F']],
             [['D', 'E', 'F'], ['A', 'C', 'E']],
             [['D'], ['B']]
             ]

    # print("Checking functional dependency:", f_dep[0][0], "->", f_dep[0][1])

    # Both right and left sides will be filled with unique values
    # Get left side of functional dependency
    left_fdep_unique = left_side(f_dep, 1)
    left_fdep = left_side(f_dep, 0)
    # Get right side of functional dependency
    right_fdep_unique = right_side(f_dep, 1)
    right_fdep = right_side(f_dep, 0)

    # Get attributes that are not in the leftside or rightside list (non-unique lists)
    non = no_side(r_attr, left_fdep_unique, right_fdep_unique)

    # Holds candidate keys
    cand_keys = []

    get_can_keys(r_attr, f_dep, cand_keys)

    # Print candidate keys that were found
    # for k in range(r_cand_keys):
    # print(r_cand_keys[k])


if __name__ == "__main__":
    main()
