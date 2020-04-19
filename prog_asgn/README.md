# Find Candidate Keys

Group Members: Matt Pitman matt_pitman@my.uri.edu
               Troy Durand tsdurand@my.uri.edu
               Hassan Bhatti hassan_bhatti@my.uri.edu
               Jane Trapala jane_trapala@my.uri.edu

## How to Compile

    make find_ck

## How to Run

    ./a.out A B C D E F

## Example

Using relational attributes $R(A,B,C,D,E,F)$ along with functional attributes:

- $ABC -> DF$
- $DEF -> ACE$
- $D -> B$

These functional dependencies are outlined in the find_ck.cpp file as:

```c
    std::vector<std::string> f1 = {"A", "B", "C"};
    std::vector<std::string> f1d = {"D", "F"};

    std::vector<std::string> f2 = {"D", "E", "F"};
    std::vector<std::string> f2d = {"A", "C", "E"};

    std::vector<std::string> f3 = {"D"};
    std::vector<std::string> f3d = {"B"};
```

The following should be done if already compiled:

```
    ./a.out A B C D E F
```
