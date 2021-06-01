#include <arpa/inet.h>
#include <netdb.h>
#include <netinet/in.h>
#include <unistd.h>
#include <iostream>
#include <cstdlib>
#include <cstring>
#include "header/Auth.h"
#include "header/Irc.h"

#define MAX_MSG 100
#define MSG_ARRAY_SIZE (MAX_MSG+3)

using namespace std;

int main(){
	int listenSocket, i,portT;
	unsigned short int listenPort, msgLength;
	socklen_t clientAddressLength;
	struct sockaddr_in clientAddress, serverAddress;
	char msg[MSG_ARRAY_SIZE],msgSend[MSG_ARRAY_SIZE];
	Irc testIrc;
	Channel channel;
	channel.name = "test";
	channel.__init__tblClient();
	channel.tblPort[0] = 123;
	memset(msg,0x0,MSG_ARRAY_SIZE);
	cout <<"Entrez le numéro de port utilisé en ecoute:\n";
	cin >> listenPort;

	listenSocket = socket (AF_INET, SOCK_DGRAM,0);
	if(listenSocket <0){
		cerr <<"Impossible de créer le socket d'ecoute ";
		exit(1);
	}

	serverAddress.sin_family=AF_INET;
	serverAddress.sin_family = AF_INET;
	serverAddress.sin_addr.s_addr = htonl(INADDR_ANY);
	serverAddress.sin_port = htons(listenPort);

	if(bind(listenSocket,(struct sockaddr *) &serverAddress,sizeof(serverAddress))<0){
		cerr<<"Impossible de lier le socket au port";
		exit(1);
	}

	listen(listenSocket,5);

	cout<<"Attente de requete sur le port...\n"<<listenPort<<"\n";

	while(1){
		clientAddressLength = sizeof(clientAddress);
		memset(msg,0x0,MSG_ARRAY_SIZE);
		if (recvfrom(listenSocket,msg, MSG_ARRAY_SIZE,0,(struct sockaddr *) &clientAddress, & clientAddressLength)<0){
			cerr<<"Probleme de reception du message";
			exit(1);
			}
		cout <<"Depuis "<<inet_ntoa(clientAddress.sin_addr);
		cout<<":"<<ntohs(clientAddress.sin_port)<<"\n";

		portT = ntohs(clientAddress.sin_port);//Récuperation du port du client

		if(testIrc.checkCmd(msg)){
			cout<<"Message checked."<<endl;
			testIrc.callFunction(msg);
		}
		
		channel.printPort();
		channel.addClient(clientAddress);
		channel.checkAddClient(clientAddress);

		cout<<"Message reçu: "<<msg<<"\n";
		cout<<testIrc.checkCmd(msg)<<"\n";
		msgLength = strlen(msg);
		
		channel.sendChannel(listenSocket,msg,msgLength+1,0);
		/*if (sendto(listenSocket,msg,msgLength +1,0,(struct sockaddr *) &clientAddress,sizeof(clientAddress))<0){
			cerr << "Emission du message impossible";
			exit(1);
		}*/
	}
	return 0;
}
