#include <iostream>
#include <string>
#include <list>
#include <vector>
#include <sstream>
#include <cstdlib>
#include <bits/stdc++.h>

void findKeys(std::vector<std::string> f1, std::vector<std::string> f1d, std::vector<std::string> R)
{
    std::vector<std::string> key;
    std::vector<std::string> dep;
    for (int i = 0; i < (int)f1.size(); i++)
    {
        dep.push_back(f1[i]);
        key.push_back(f1[i]);
    }
    for (int i = 0; i < (int)f1d.size(); i++)
    {
        dep.push_back(f1d[i]);
    }
    for (int i = 0; i < (int)R.size(); i++)
    {
        int counter = 0;
        for (int j = 0; j < (int)dep.size(); j++)
        {
            if (dep[j] == R[i])
            {
                counter++;
            }
        }
        if (counter == 0)
        {
            key.push_back(R[i]);
        }
    }
    for (int i = 0; i < (int)key.size(); i++)
    {
        std::cout << key[i] << ' ';
    }
    std::cout << std::endl;
}

int main(int argc, char *argv[])
{
    std::string rep;
    std::vector<std::string> R;

    std::vector<std::vector<std::string>> f_deps;

    for (int i = 1; i < argc; i++)
    {
        rep = argv[i];
        R.push_back(rep);
    }
    /*std::vector<std::string> f1 = {"A", "B", "C"};
    std::vector<std::string> f1d = {"E"};
    std::vector<std::string> f2 = {"A"};
    std::vector<std::string> f2d = {"F"};
    std::vector<std::string> f3 = {"D", "E"};
    std::vector<std::string> f3d = {"A", "F"};*/

    std::vector<std::string> f1 = {"A", "B", "C"};
    std::vector<std::string> f1d = {"D", "F"};

    std::vector<std::string> f2 = {"D", "E", "F"};
    std::vector<std::string> f2d = {"A", "C", "E"};

    std::vector<std::string> f3 = {"D"};
    std::vector<std::string> f3d = {"B"};

    std::cout << "Candidate Keys:" << std::endl;
    findKeys(f1, f1d, R);
    findKeys(f2, f2d, R);
    findKeys(f3, f3d, R);
}