#include <iostream>
#include <string>
#include "../header/Auth.h"
#include "../header/Irc.h"
#include "../header/Function.h"

using namespace std;


typedef int (*tbla[]) (int a);

int yala(int a){return a;}

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
/*	
	string teststr;
	cout<<"Entrer un channel";
	cin>>teststr;

	cout<<"\nCheck command : "<<testIrc.checkCmd(testIrc.returnCmd(teststr))<<"\n";	
	return 0;
*/

//Test SPLIT
	string testt="salut";
	cout<<"\n\n Test SPLIT: "<<testt[0];
	string tblString[10];
	split("/JOIN salut",tblString);
	for(int k=0;k<2;k++){
		cout<<tblString[k];
	}

	
	//TEST array function
	tbla functions[] = {yala};
}
