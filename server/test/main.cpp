#include <string>
#include <iostream>
#include <functional>
#include <limits>
using namespace std;

int main(){
	string test = "JOIN";
	constexpr int ash = std::square_cstxpr((int)std::hash<string>()(test));
	string x;
	cin>>x;
	const int k = std::hash<string>()(x);
	switch(k){
		case ash:
			cout << "Bravo !!!";
			break;
		default:
			"FAUX";
			break;
	}
	return 0;
}
