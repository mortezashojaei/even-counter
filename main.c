#include<stdio.h>
 
int main()
{
 int i;
 int array[22] = {1, 7, 15, 10, 12, 3, 11, 19, 51, 8, 93, 26, 73, 10, 14, 18, 2, 81, 64, 35, 66, 10};
 int Even_Count = 0;


 for(i = 0; i < 22; i ++)
 {
   if(array[i] % 2 == 0)
   {
     Even_Count++;
   }
 }
 
 printf("even counts: %d",Even_Count);
 return 0;
}
