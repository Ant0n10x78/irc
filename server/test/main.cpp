#include <string>
#include <iostream>
#include <functional>

using namespace std;

int main(){
	string test = "JOIN";
	int ash = std::hash<string>()(test);
	cout<<ash;
	return 0;
}
