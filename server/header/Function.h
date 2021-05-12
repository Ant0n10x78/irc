#include <string>
#include <bits/stdc++.h>
using namespace std;


void split(string strx,string *tbl){//Find another algorithm to split ,this one has high complexity
	string word;
	stringstream ss(strx);
	while(ss >> word){
		tbl->append(word);
	}
}
