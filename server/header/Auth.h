//specificité c++

using namespace std;

class Auth{
	public:
	int id;
	string userName[20];

	void connection(string cmd){
	
		if("/PASS"==cmd){
			cout<<"Print /PASS\n";
		}else{
			cout<<"Print Erreur\n";
		}
	}
};