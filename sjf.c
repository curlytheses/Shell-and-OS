//  Write a program in C to demonstrate Shortest Job First (SJF) scheduling algorithm and print the waiting times for each process and also print the average waiting time.

//Submitted By Roll No: - 302
//Source Code

#include <stdio.h>
int main()
{
    int bt[20], p[20], wt[20], tat[20], i, j, n, total = 0, pos, temp;
    float avg_wt, avg_tat;
    printf("Enter number of process:");
    scanf("%d", &n);
    printf("\nEnter Burst Time:\n");
    for (i = 0; i < n; i++)
    {
        printf("p%d:", i + 1);
        scanf("%d", &bt[i]);
        p[i] = i + 1;
    }
    //sorting of burst times
    for (i = 0; i < n; i++)
    {
        pos = i;
        for (j = i + 1; j < n; j++)
        {
            if (bt[j] < bt[pos])
                pos = j;
        }
        temp = bt[i];
        bt[i] = bt[pos];
        bt[pos] = temp;
        temp = p[i];
        p[i] = p[pos];
        p[pos] = temp;
    }
    wt[0] = 0;
    for (i = 1; i < n; i++)
    {
        wt[i] = 0;
        for (j = 0; j < i; j++)
            wt[i] += bt[j];
        total += wt[i];
    }
    avg_wt = (float)total / n;
    total = 0;
    printf("\nP\t    Burst Time    \tWaiting Time\tTurnaround Time");
    for (i = 0; i < n; i++)
    {
        tat[i] = bt[i] + wt[i];
        total += tat[i];
        printf("\np%d\t\t  %d\t\t    %d\t\t\t%d", p[i], bt[i], wt[i], tat[i]);
    }
    avg_tat = (float)total / n;
    printf("\n\nAverage Waiting Time=%f", avg_wt);
    printf("\nAverage Turnaround Time=%f\n", avg_tat);
}


/////////////////////OUTPUT////////////////

// PS C:\Users\Krishnendu Das\OneDrive\Desktop\Shell and OS> ./a.exe  
// Enter number of process:5

// Enter Burst Time:
// p1:5
// p2:6
// p3:7
// p4:4
// p5:3

// Process     Burst Time          Waiting Time    Turnaround Time
// p5                3                 0                   3      
// p4                4                 3                   7      
// p1                5                 7                   12     
// p2                6                 12                  18     
// p3                7                 18                  25     

// Average Waiting Time=8.000000
// Average Turnaround Time=13.000000
// PS C:\Users\Krishnendu Das\OneDrive\Desktop\Shell and OS>