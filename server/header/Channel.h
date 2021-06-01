//Class Channel
#include <string>
#include <iostream>

using namespace std;

class Channel{
	public:
	string name;
	int tblPort[10]={0,0,0,0,0,0,0,0,0,0};
	struct sockaddr_in tblClient[10];

	void createChannel(string name,int port){
		this->name = name;
		this->tblPort[0] = port;
	}

	void printPort(){//test function 
		for(int i = 0;i<3;i++){
			cout<<"\n"<<tblPort[i]<<"\n";
		}
	}
	void addClient(struct sockaddr_in x){
		this->tblClient[0]=x;
		cout<<"addClient :"<<ntohs(x.sin_port);
	}

};

