#include <iostream>
#include <netdb.h>
#include <unistd.h>
#include <netinet/in.h>
#include <limits>
#include <cstdlib>
#include <cstring>

#define MAX_MSG 100
#define MSG_ARRAY_SIZE (MAX_MSG+3)

using namespace std;

int main(){
	int socketDescriptor;
	int numRead;
	unsigned short int serverPort;
	struct sockaddr_in serverAddress;
	struct hostent *hostInfo;
	struct timeval timeVal;
	fd_set readSet;
	char msg[MSG_ARRAY_SIZE], c;
	char user[] = "guest";

	cout <<"Entrez le nom du serveur ou son adresse IP:";
	memset(msg,0x0,MSG_ARRAY_SIZE);
	cin.get(msg,MAX_MSG,'\n');

	hostInfo = gethostbyname(msg);
	if (hostInfo == NULL){
		cerr << "Problème dans l'interpretation des informations d'hote :" << msg <<"\n";
		exit(1);
	}

	cout <<"Entrez le numéro de port du serveur:\n ";
	cin >> serverPort;
	cin.ignore(1,'\n');//Suppression du saut de ligne

	socketDescriptor = socket(AF_INET,SOCK_DGRAM,0);

	if(socketDescriptor <0){
		cerr <<"Impossible de créer le socket\n";
		exit(1);
	}

	//initialisation des champs de la structure serverAddress
	serverAddress.sin_family = hostInfo->h_addrtype;
	memcpy((char *) &serverAddress.sin_addr.s_addr,
			hostInfo->h_addr_list[0],hostInfo->h_length);
	serverAddress.sin_port = htons(serverPort);

	cout <<"Pour sorti taper '.'uniquement\n";
        cout <<"Seul les  "<<MAX_MSG<<"premier caractères seront utilisés\n";

	cout<<user<<">";
	memset(msg,0x0,MSG_ARRAY_SIZE);
	cin.get(msg,MAX_MSG,'\n');

	//suppression des caractères supplèmentaire et saut de ligne
	cin.ignore(numeric_limits<streamsize>::max(),'\n');

	//arret lorsque l'utilisateur saisit une ligne ne contenant qu'un point
	while (strcmp(msg,".")){
		if (sendto(socketDescriptor, msg, strlen(msg),0,(struct sockaddr *) &serverAddress,sizeof(serverAddress))<0){
			cerr <<"emission du message impossible\n";
			close(socketDescriptor);
			exit(1);
		}
		//Attente de la réponse pendant une seconde
		FD_ZERO(&readSet);
		FD_SET(socketDescriptor, &readSet);
//		timeVal.tv_sec = 1;
//		timeVal.tv_usec = 0;

		if (select(socketDescriptor+1,&readSet, NULL, NULL, &timeVal)){
		//Lecture du messgae envoyé par le serveur 
		memset(msg, 0x0,MSG_ARRAY_SIZE);
		numRead = recv(socketDescriptor,msg,MAX_MSG,0);
			if(numRead <0){
				cerr <<"Aucune reponse du serveur\n";
				close(socketDescriptor);
				exit(1);
			}
		cout << "Message traité:"<<msg<<"\n";
		}
		else{
			cout <<"Le serveur n'a pas répondu dans la seconde \n";
		}

		//invite de commande pour l'utilisateur et lecture des caractère jusqu'à la fin
		cout<<user<<">";
		memset(msg,0x0,MSG_ARRAY_SIZE);
		cin.get(msg,MAX_MSG,'\n');
		cin.ignore(numeric_limits<streamsize>::max(),'\n');
	}
	close(socketDescriptor);
	return 0;
}
