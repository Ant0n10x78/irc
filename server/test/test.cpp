#include <iostream>
#include <string>
#include "../header/Auth.h"
#include "../header/Irc.h"

using namespace std;

int main(){
	//Instantiation
	Auth user;
	Irc testIrc;
	Channel channel;

	char userTest[]="Antonio";

	cout<<"Hello TeST\n";
	user.connection("/PASS");
	*user.userName = "Antonio";
	if(*user.userName==userTest){
	cout<<"True";
	}

//Test Irci
	cout<<"\n\n Test:\n";
	channel.name="test Channel";
       	testIrc.channelTbl[0]=channel;
	cout<<testIrc.channelTbl[0].name;
	
	string teststr;
	cout<<"Entrer un channel";
	cin>>teststr;

	cout<<"\nCheck command : "<<testIrc.checkCommand(testIrc.returnCmd(teststr))<<"\n";	
	return 0;
}
