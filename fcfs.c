// Write a program in C to demonstrate First Come First Serve (FCFS) scheduling algorithm and print the waiting times for each process and also print the average waiting time.


//Submitted By Roll : 302
//Source Code

#include<stdio.h>

int main(){

	int bt[10]={0},at[10]={0},tat[10]={0},wt[10]={0},ct[10]={0};
	int n,sum=0;
	float totalTAT=0,totalWT=0;

	printf("Enter number of processes	");
	scanf("%d",&n);

	printf("Enter arrival time and burst time for each process\n\n");

	for(int i=0;i<n;i++)
	{

		printf("Arrival time of process[%d]	",i+1);
		scanf("%d",&at[i]);
		
		printf("Burst time of process[%d]	",i+1);
		scanf("%d",&bt[i]);
		
		printf("\n");
	}
		
	//calculate completion time of processes 	

	for(int j=0;j<n;j++)
	{
		sum+=bt[j];
		ct[j]+=sum;
	}

	//calculate turnaround time and waiting times 

	for(int k=0;k<n;k++)
	{
		tat[k]=ct[k]-at[k];
		totalTAT+=tat[k];
	}

	
	for(int k=0;k<n;k++)
	{
		wt[k]=tat[k]-bt[k];
		totalWT+=wt[k];
	}
	
	printf("Solution: \n\n");
	printf("P#\t AT\t BT\t CT\t TAT\t WT\t\n\n");
	
	for(int i=0;i<n;i++)
	{
		printf("P%d\t %d\t %d\t %d\t %d\t %d\n",i+1,at[i],bt[i],ct[i],tat[i],wt[i]);
	}
		
	printf("\n\nAverage Turnaround Time = %f\n",totalTAT/n);
	printf("Average WT = %f\n\n",totalWT/n);
	
	return 0;
}

////////////////////////OUTPUT//////////////////////


// PS C:\Users\Krishnendu Das\OneDrive\Desktop\Shell and OS> gcc fcfs.c
// PS C:\Users\Krishnendu Das\OneDrive\Desktop\Shell and OS> ./a.exe
// Enter number of processes:       5
// Enter arrival time and burst time for each process

// Arrival time of process[1]      3
// Burst time of process[1]        5

// Arrival time of process[2]      3
// Burst time of process[2]        6

// Arrival time of process[3]      4
// Burst time of process[3]        6

// Arrival time of process[4]      5
// Burst time of process[4]        7

// Arrival time of process[5]      4
// Burst time of process[5]        7

// Solution:

// P#       AT      BT      CT      TAT     WT

// P1       3       5       5       2       -3
// P2       3       6       11      8       2
// P3       4       6       17      13      7
// P4       5       7       24      19      12
// P5       4       7       31      27      20


// Average Turnaround Time = 13.800000
// Average WT = 7.600000

// PS C:\Users\Krishnendu Das\OneDrive\Desktop\Shell and OS>
