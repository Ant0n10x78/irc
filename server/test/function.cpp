#include <iostream>
#include <sstream>
#include <utility>
#include <string>
using namespace std;

typedef void (*IntFunctionWithOneParameter) ();

void function(){cout<<"F1\n";}
void functionTimesTwo(){cout<<"F2\n";}
void functionDivideByTwo(){cout<<"F3\n";}

int main(){

	IntFunctionWithOneParameter functions[] =
	{
		function,
		functionTimesTwo,
		functionDivideByTwo
	};
	
	std::ostream myout(std::cout.rdbuf());

	std::ostringstream s2(std::move(std::ostringstream() << functions[0]()));
	myout << s2.str();
}
