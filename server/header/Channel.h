//Class Channel
#include <string>

using namespace std;

class Channel{
	public:
	string name;
	int tblIp[10];

	void createChannel(string name,int ip){
		this->name = name;
		this->tblIp[0] = ip;
	}

};

