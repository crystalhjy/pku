#include<iostream>
#include<cmath>
using namespace std;

int count1 = 0;

void factor(int x, int n)
{
	for (int i = x; i <= sqrt(n); i++)
	{
		if (n % i == 0)
		{
			count1++;
			factor(i, n / i);
		}
		
	}
}

int main()
{
	int n = 0;
	int num_pairs = 0;
	cin >> num_pairs;
	while(num_pairs--)
	{
		count1 = 1;
		cin >> n;
		factor(2, n);
		cout << count1 << endl;
	}
	return 0;
}
