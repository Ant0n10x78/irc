//specificité c++

using namespace std;

class Auth{
	public:
	void connection(string cmd){	
		if("/PASS"==cmd){
			cout<<"/PASS\n";
		}else{
			cout<<"Error /PASS\n";
		}
	}
};
