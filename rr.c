// Write a program in C to demonstrate Round Robin (FCFS) scheduling algorithm and print the waiting times for each process and also print the average waiting time.

//Submitted By Roll No :- 302
//Source Code

#include <stdio.h>
#include <conio.h>

void main()
{
    int i, NOP, sum = 0, count = 0, y, quant, wt = 0, tat = 0, at[10], bt[10], temp[10];
    float avg_wt, avg_tat;
    printf(" Total number of process in the system: ");
    scanf("%d", &NOP);
    y = NOP; 
    for (i = 0; i < NOP; i++)
    {
        printf("\n Enter the Arrival and Burst time of the P[%d]\n", i + 1);
        printf(" Arrival time is: \t"); 
        scanf("%d", &at[i]);
        printf(" \nBurst time is: \t"); 
        scanf("%d", &bt[i]);
        temp[i] = bt[i]; 
    }
    printf("Enter the Time Quantum for the process: \t");
    scanf("%d", &quant);
    printf("\nProcess No\t      Burst Time      \tTAT\tWaiting Time ");
    for (sum = 0, i = 0; y != 0;)
    {
        if (temp[i] <= quant && temp[i] > 0) 
        {
            sum = sum + temp[i];
            temp[i] = 0;
            count = 1;
        }
        else if (temp[i] > 0)
        {
            temp[i] = temp[i] - quant;
            sum = sum + quant;
        }
        if (temp[i] == 0 && count == 1)
        {
            y--; 
            printf("\nP[%d] \t\t %d\t\t %d\t\t %d", i + 1, bt[i], sum - at[i], sum - at[i] - bt[i]);
            wt = wt + sum - at[i] - bt[i];
            tat = tat + sum - at[i];
            count = 0;
        }
        if (i == NOP - 1)
        {
            i = 0;
        }
        else if (at[i + 1] <= sum)
        {
            i++;
        }
        else
        {
            i = 0;
        }
    }
    avg_wt = wt * 1.0 / NOP;
    avg_tat = tat * 1.0 / NOP;
    printf("\n Average Turn Around Time: \t%f", avg_wt);
    printf("\n Average Waiting Time: \t%f", avg_tat);
    getchar();
}


////////////////////OUTPUT//////////////

// PS C:\Users\Krishnendu Das\OneDrive\Desktop\Shell and OS> gcc rr.c
// PS C:\Users\Krishnendu Das\OneDrive\Desktop\Shell and OS> ./a.exe 
//  Total number of process in the system: 5

//  Enter the Arrival and Burst time of the Process[1]
//  Arrival time is:       4
 
// Burst time is:  6

//  Enter the Arrival and Burst time of the Process[2]
//  Arrival time is:       3
 
// Burst time is:  5

//  Enter the Arrival and Burst time of the Process[3]
//  Arrival time is:       4
 
// Burst time is:  7

//  Enter the Arrival and Burst time of the Process[4]
//  Arrival time is:       2
 
// Burst time is:  5

//  Enter the Arrival and Burst time of the Process[5]
//  Arrival time is:       6
 
// Burst time is:  8
// Enter the Time Quantum for the process:         4

//  Process No              Burst Time              TAT             Waiting Time
// Process No[1]            6                       18                      12
// Process No[2]            5                       20                      15
// Process No[3]            7                       22                      15
// Process No[4]            5                       25                      20
// Process No[5]            8                       25                      17
//  Average Turn Around Time:      15.800000
//  Average Waiting Time:  22.000000
// PS C:\Users\Krishnendu Das\OneDrive\Desktop\Shell and OS>