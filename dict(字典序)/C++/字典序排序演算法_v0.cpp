#include <iostream>
#include <cstdlib>
using namespace std;
#define length 8

const int MAXSIZE = 100;

int x, y = 0;
int job = 0, worker;
int mincost, sum, matchcount, match_list_cnt = 0;
int reg[MAXSIZE][MAXSIZE];
int cnt;
int arr[length] = {0, 1, 2, 3, 4, 5, 6, 7};
int match_list[MAXSIZE][8];

// procedure
void find_mincost() //找最小值
{
    if (sum <= mincost)
    {
        if (sum == mincost)
        {
            matchcount = matchcount + 1;
            match_list_cnt = match_list_cnt + 1;
            for (int d = 0; d < length; d++)
            {
                match_list[match_list_cnt][d] = arr[d];
            }
        }
        else
        {
            for (int d = 0; d < length; d++)
            {
                match_list[0][d] = arr[d];
            }
            mincost = sum;
            match_list_cnt = 0;
            matchcount = 1;
        }
    }
}
void compute_cost(int n, int pattern) //計算cost
{
    sum = 0;

    x = 1, y = 0;
    int num1[length][length] =
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

    int num2[length][length] =
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
    int num3[length][length] =
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
            reg[x][y] = arr[z];
            job = reg[x][y];
            sum = num1[y][job] + sum;
            y++;
        }
        break;
    case (2):
        for (int z = 0; z < n; z++)
        {
            reg[x][y] = arr[z];
            job = reg[x][y];
            sum = num2[y][job] + sum;
            y++;
        }
        break;
    case (3):
        for (int z = 0; z < n; z++)
        {
            reg[x][y] = arr[z];
            job = reg[x][y];
            sum = num3[y][job] + sum;
            y++;
        }
        break;
    default:
        for (int z = 0; z < n; z++)
        {
            reg[x][y] = arr[z];
            job = reg[x][y];
            sum = num1[y][job] + sum;
            y++;
        }
    };
}
void swap(int arr[], int index, int j) //交換數列
{
    int temp = arr[index];
    arr[index] = arr[j];
    arr[j] = temp;
}
void reverse(int arr[], int index)
{
    int i = index;
    int j = length - 1;
    while (i < j)
    {
        swap(arr[i], arr[j]);
        i++;
        j--;
    }
}
void permute(int arr[], int k)
{
    int len = length;
    bool end = false;

    // first sequence
    compute_cost(length, k);
    find_mincost();
    mincost = sum;

    // rest of sequence
    while (true)
    {
        compute_cost(length, k);
        find_mincost();
        int index = 0;
        int j;
        cnt++;

        //  從右到左找到第一個非遞增的元素
        for (j = len - 2; j >= 0; j--)
        {
            if (arr[j] < arr[j + 1])
            {
                index = j;
                break;
            }
            else if (j == 0)
            {
                end = true;
                break;
            }
        }

        // 遍歷已經結束
        if (end)
        {
            break;
        }

        // 從右向左找到第一個比非遞增元素大的元素
        for (j = len - 1; j >= 0; j--)
        {
            if (arr[j] > arr[index])
            {
                break;
            }
        }

        swap(arr[index], arr[j]);
        reverse(arr, index + 1);
    }
}

int main()
{
    // input
    int pattern;
    cout << "Select pattern (enter 1 or 2 or 3) : ";
    cin >> pattern;

    // algorithm
    permute(arr, pattern);

    // display result
    cout << "Result of  Dictionary order algorithm :";
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
    cout << "******************************************\n";
    system("PAUSE");
    return 0;
}
