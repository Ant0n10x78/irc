#include <iostream>
#include <string>
#include "Auth.h"
#include "Irc.h"

using namespace std;

int main(){
	Auth user;
	Irc testIrc;
	cout<<"Hello TeST\n";
	user.connection("/PASS");
	cout<<*testIrc.channel;
	return 0;
}
