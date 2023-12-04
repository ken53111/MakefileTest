#include <iostream>
#include <mul.h>
#include <add.h>
#include <div.h>
#include <sub.h>
#include <calculator.h>

int main(void)
{
    std::cout << mul(5,7) << std::endl;
    std::cout << sub(9,2) << std::endl;
    Calculator c;

    std::cout << c.div(8, 3) << std::endl;
}
