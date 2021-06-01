//Class Channel
#include <string>
#include <iostream>

using namespace std;

class Channel{
	public:
	string name;
	int tblPort[10]={0,0,0,0,0,0,0,0,0,0};
	struct sockaddr_in __init__socket;
	struct sockaddr_in tblClient[10];

	void __init__tblClient(){
		this->__init__socket.sin_port = 0;
		int i = 0;
		for(i;i<10;i++){
			this->tblClient[i]=this->__init__socket;
		}
	}
	
	void createChannel(string name,int port){
		this->name = name;
		this->tblPort[0] = port;
	}

	void printPort(){//test function 
		for(int i = 0;i<3;i++){
			cout<<"\n"<<tblPort[i]<<"\n";
		}
	}

	void addClient(struct sockaddr_in client){
		int i = 0;
		for(i;i<10;i++){
			if(this->tblClient[i].sin_port == client.sin_port){
				cout<<"Client deja enregistrer dans ce channel";
				break;
			}
			if(this->tblClient[i].sin_port == 0){
				this->tblClient[i]=client;
				cout<<"addClient,IP:"<<inet_ntoa(this->tblClient[i].sin_addr)<<":"<<ntohs(client.sin_port);
				break;
			}
		}
	}

	bool checkAddClient(struct sockaddr_in client){
		int i = 0;
		for(i;i<3;i++){
			cout<<"\nCheckClient :"<<inet_ntoa(this->tblClient[i].sin_addr);
		}
		return 0;
	}
	
	void sendChannel(int socket,const void *message,size_t length,int flags){
		int i = 0;
		for(i;i<10;i++){
			if(this->tblClient[i].sin_port != 0){
				
				if(sendto(socket,message,length,flags,(struct sockaddr *) &this->tblClient[i],sizeof(this->tblClient[i]))<0){
					cerr << "Emission du message impossible";
					exit(1);
				}
			}
		}
	}
};

