# Find Candidate Keys 

Group Members:

## How to compile

    make find_ck

## How to run

    ./a.out A B C D E F

## Example

Using relational attributes $R(A,B,C,D,E,F)$ along with functional attributes:
- $ABC -> DF$
- $DEF -> ACE$
- $D -> B$

The following should be done if already compiled:

```
    ./a.out A B C D E F
```