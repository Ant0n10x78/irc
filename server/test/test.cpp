#include <iostream>
#include <string>
#include "Auth.h"
#include "Irc.h"

using namespace std;

int main(){
	Auth user;
	Irc testIrc;
	char userTest[]="Antonio";

	cout<<"Hello TeST\n";
	user.connection("/PASS");
	*user.userName = "Antonio";
	if(*user.userName==userTest){
	cout<<"True";
	}

//Test Irci
	cout<<"\n\n Test:\n"; 
	testIrc.checkIp(testIrc,0);
	return 0;
}
