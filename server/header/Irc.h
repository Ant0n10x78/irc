#include <string>
#include "Channel.h"

using namespace std;

class Irc{
	public:
	char channel[200];
	int tblIp[20];
	Channel channelTbl[10];

	void addUser(string userName){
		//addUSer
	}	

	void checkIp(Irc irc,int ip){//search brute
		int i =0;
		bool check=0;
		for(i=0;i<19;i++){
			if(irc.tblIp[i]==ip){
				cout<<"L'ip existe deja ";	
			}
		}
		if(!check){
			cout<<"L'ip n'existe pas";
		}
	}
};
