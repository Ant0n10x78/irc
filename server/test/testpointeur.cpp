#include <iostream>
#include <string>
#include "../header/Irc.h"

using namespace std;

void rStr(string x){
	cout<<x<<"\n";
}
void rStr2(string x){
	cout<<x<<"\n";
}

int main(){
	Irc irc;
	void (*tblStr[])(string x) = {&rStr,&rStr2,Irc::ircUSER};
	tblStr[0]("salut");
	tblStr[1]("machine2");
	return 0;
}
