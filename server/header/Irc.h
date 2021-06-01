#include "Channel.h"

using namespace std;

#define ARRAY_CMD_LENGTH 10

class Irc{
	public:
	char channel[200];
	int tblIp[20];
	string cmdArray[ARRAY_CMD_LENGTH]={"/JOIN","/NICK","/PASS","/USER"};
	Channel channelTbl[10];

	string returnCmd(string str){//return a COMMAND (only the five first char)
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
			if(channelTbl[i].name==channel.name){
			 cout<<"Ce channel existe deja, EXIT addChannel() \n";
			 break;
			}
			if(channelTbl[i].name==""){
			cout<<"Ajout d'un channel dans le serveur irc\n";
			cout<<"Emplacement restant sur ce serveur :"<<10-i<<"\n";
			channelTbl[i]=channel;
			break;
			}
		}
	}

	void addIp(string s){
		
	}

	bool checkCmd(string cmd){//return true if the command exist
		int i = 0;
		for(i;i<ARRAY_CMD_LENGTH;i++){
			if(cmd==cmdArray[i]){
				return true;
			}
		}
		return false;
	}
	
	void checkIp(Irc irc,int ip){//search brut ip
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
	//declaration of all function for commands IRC

	void ircUSER(string cmd){
		cout<<"Function ircUSER.\n";
	}

	void ircJOIN(string cmd){
		cout<<"Function ircJOIN.\n";
	}

	void ircNICK(string cmd){
		cout<<"Function ircNICK.\n";
	}

	void ircPASS(string cmd){
		cout<<"Function ircPASS.\n";
	}
		
	void callFunction(string cmd){//redirection of the string to a function
		if(cmd == "/USER"){
			ircUSER(cmd);
		}
		else if(cmd == "/JOIN"){
			ircJOIN(cmd);
		}
		else if(cmd == "/NICK"){
			ircNICK(cmd);
		}
		else if(cmd == "/PASS"){
			ircPASS(cmd);
		}
	}
};
