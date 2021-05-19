#include <iostream>
#include <string>
using namespace std; 

void affiche(string a){cout<<"affiche()\n";}
void abc(string a){cout<<"affiche2()\n";}

int main(){

	void (*pointeur[])(string a) = {affiche,abc};

		pointeur[0]("daz");
		pointeur[1]("salut");


	return 0;
}
