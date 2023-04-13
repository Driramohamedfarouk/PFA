#include <bits/stdc++.h>

using namespace std ; 





int main(){
	freopen("input.txt","r",stdin);
	freopen("output.txt","w",stdout);
	int n , m ; 
	cin >> n ; 
	cin >> m ; 
	cout << "# edge list" << '\n'; 
	cout << "# nb of vertecies = " << n << '\n' ; 
	cout << "# nb of edges = " << m << '\n' ; 
	queue<int> q ; 
	int temp ; 
	for (int i = 0; i < n; ++i)
	{
		cin >> temp ; 
		q.push(temp); 
	}
	int offset , next_offset ;
	int index =0 ;  
	while(!q.empty()){
		offset = q.front();
		q.pop() ; 
		if(q.empty()){
			next_offset = offset+1 ;
		}else {
			next_offset = q.front();
		}
		for (int i = offset; i < next_offset; ++i)
		{
			cin >> temp ; 
			cout << index << "\t" << temp << '\n' ; 
		}
		index++ ; 
	}
	
	return 0 ; 
}
