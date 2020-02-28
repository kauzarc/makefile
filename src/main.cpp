// BY KAUZARC
// COMPUTER SCIENCE STUDENT

// Un exemple simple de source
// Les headers doivent aussi etre placee dans ce dossier

#include <iostream>

#include "header/exemple1.hpp"
#include "header/exemple2.hpp"

int main(int argc, char const *argv[])
{
    Exemple1 exemple1(2);
    Exemple2 exemple2(2.);
    std::cout << "Hello world !" << std::endl;
    return 0;
}