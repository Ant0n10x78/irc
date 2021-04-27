//specificité c++

using namespace std;

class Auth{
	public:
	void connection(string cmd){
	
		if("/PASS"==cmd){
			cout<<"Print /PASS\n";
		}else{
			cout<<"Print Erreur\n";
		}
	}
};
