#include <string>
#include "Channel.h"

using namespace std;

#define ARRAY_CMD_LENGTH 10

class Irc{
	public:
	char channel[200];
	int tblIp[20];
	string cmdArray[ARRAY_CMD_LENGTH]={"/PASS","/NICK","/USER","/JOIN"};
	Channel channelTbl[10];

	string returnCmd(string str){//return a COMMAND see DOC
		string x="     ";
		int i = 0;
		for(i;i<5;i++){
			x[i]=str[i];
		}
		return x;
	}

	void addChannel(Channel channel){//Add a user in a channel
		int i = 0;
		for(i;i<10;i++){
			if(channelTbl[i].name==""){
			cout<<"Ajout d'un channel dans le serveur irc\n";
			cout<<"Emplacement restant sur ce serveur :"<<10-i<<"\n";
			channelTbl[i]=channel;
			break;
			}
		}
	}

	bool checkCmd(string cmd){
		int i = 0;
		for(i;i<ARRAY_CMD_LENGTH;i++){
			if(cmd==cmdArray[i]){
				return true;
			}
		}
		return false;
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
