#include <iostream>
#include <cstdlib>

#define length 8
using namespace std;
const int MAXSIZE = 100;

int Q;
int n, d;
int arr[MAXSIZE];
int c[MAXSIZE];
int o[MAXSIZE];
int reg[MAXSIZE][MAXSIZE];
int x, y, cnt = 0;
int num1[MAXSIZE][MAXSIZE];
int num2[MAXSIZE][MAXSIZE];
int num3[MAXSIZE][MAXSIZE];
int comb[MAXSIZE][MAXSIZE];
int u = 8, v = 8, p = 0;
int job = 0, worker;
int mincost, sum, matchcount, match_list_cnt = 0;
int match_list[MAXSIZE][8];

int change(int arr[], int i, int j) //交換數列
{
	int temp = arr[i];
	arr[i] = arr[j];
	arr[j] = temp;
	return 0;
}
int print(int arr[], int n, int cnt) //計算序列數
{
	cnt++;
	return cnt;
}
int find_mincost() //找最小值
{
	if (sum <= mincost)
	{
		if (sum == mincost)
		{
			matchcount = matchcount + 1;
			match_list_cnt = match_list_cnt + 1;
			for (int d = 0; d < length; d++)
			{
				match_list[match_list_cnt][d] = arr[d] - 1;
			}
		}
		else
		{
			for (int d = 0; d < length; d++)
			{
				match_list[0][d] = arr[d] - 1;
			}
			mincost = sum;
			match_list_cnt = 0;
			matchcount = 1;
		}
	}

	return 0;
}
int compute_cost(int n, int pattern) //計算cost
{
	sum = 0;
	int a = 0, b = 0;
	int num1[u][v] =
		{
			{11, 25, 53, 41, 59, 32, 25, 59},
			{04, 11, 25, 11, 59, 31, 53, 11},
			{11, 59, 15, 11, 15, 15, 53, 53},
			{04, 59, 32, 34, 53, 41, 34, 59},
			{15, 32, 41, 34, 04, 59, 34, 32},
			{41, 59, 59, 04, 04, 41, 34, 34},
			{53, 31, 25, 41, 59, 32, 31, 53},
			{11, 31, 25, 11, 34, 34, 53, 32},
		};

	int num2[u][v] =
		{
			{54, 59, 59, 59, 32, 40, 62, 40},
			{54, 32, 32, 79, 32, 38, 32, 62},
			{54, 54, 30, 38, 32, 38, 59, 54},
			{30, 59, 32, 32, 62, 40, 45, 79},
			{32, 32, 38, 32, 62, 38, 62, 32},
			{79, 45, 32, 62, 32, 32, 32, 59},
			{32, 38, 32, 59, 54, 30, 30, 45},
			{30, 79, 32, 32, 62, 30, 45, 32},
		};
	int num3[u][v] =
		{
			{81, 60, 60, 65, 96, 60, 65, 96},
			{96, 60, 66, 96, 60, 60, 60, 81},
			{96, 66, 60, 99, 60, 81, 65, 65},
			{66, 96, 80, 99, 81, 81, 96, 60},
			{81, 96, 65, 96, 60, 96, 60, 81},
			{60, 96, 80, 96, 80, 60, 81, 60},
			{99, 60, 99, 65, 80, 80, 81, 66},
			{65, 60, 60, 99, 99, 80, 60, 96},
		};

	switch (pattern)
	{
	case (1):
		for (int z = 0; z < n; z++)
		{
			reg[x][y] = arr[z] - 1;
			job = reg[x][y];
			sum = num1[y][job] + sum;
			y++;
		}
		break;
	case (2):
		for (int z = 0; z < n; z++)
		{
			reg[x][y] = arr[z] - 1;
			job = reg[x][y];
			sum = num2[y][job] + sum;
			y++;
		}
		break;
	case (3):
		for (int z = 0; z < n; z++)
		{
			reg[x][y] = arr[z] - 1;
			job = reg[x][y];
			sum = num3[y][job] + sum;
			y++;
		}
		break;
	default:
		for (int z = 0; z < n; z++)
		{
			reg[x][y] = arr[z] - 1;
			job = reg[x][y];
			sum = num1[y][job] + sum;
			y++;
		}
	};
	return 0;
}
int permutation(int n, int pattern) //排列
{
	int a = 0, b = 0;
	for (int i = 0; i < n; i++)
	{
		c[i] = 0;
		o[i] = 1;
	}
	int j = n - 1, s = 0;

	compute_cost(n, pattern);
	// printf("No.%d  total_cost=%d mincost=%d matchcount=%d", cnt + 1, sum, mincost, matchcount);
	find_mincost();
	cnt++;
	mincost = sum;

	while (true)
	{
		int q = c[j] + o[j];
		x = 1, y = 0;
		if (q >= 0 && q != j + 1)
		{
			sum = 0;
			compute_cost(n, pattern);
			// printf("No.%d  total_cost=%d mincost=%d matchcount=%d", cnt + 1, sum, mincost, matchcount);
			find_mincost();
			x++;
			cnt = print(arr, n, cnt);
			change(arr, j - c[j] + s, j - q + s);
			c[j] = q;
			j = n - 1;
			s = 0;
			continue;
		}
		if (q == j + 1)
		{
			if (j == 0)
				break;
			else
				s++;
		}
		o[j] = -o[j];
		j--;
	}
	return 0;
}
int main()
{
	// input
	int pattern;
	for (int i = 0; i < length; i++)
	{
		arr[i] = i + 1;
	}
	cout << "Select pattern (enter 1 or 2 or 3) : ";
	cin >> pattern;

	// algorithm
	permutation(length, pattern);

	// display result
	cout << "Result of Johnson-Trotter algorithm :";
	cout << "\n*******************************************";
	printf("\nmincost:%d\nmatchcount:%d\nmatch_list_cnt=%d\n", mincost, matchcount, match_list_cnt + 1);
	printf("The optimal strategy is described below:\n");
	for (int i = 0; i <= match_list_cnt; i++)
	{
		printf("strategy  %d is : ", i + 1);
		for (int j = 0; j < length; j++)
			printf("%d ", match_list[i][j]);
		printf("\n");
	}
	cout << "*****************\n";
	system("PAUSE");
	return 0;
}
