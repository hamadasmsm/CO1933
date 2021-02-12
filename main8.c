
#include <stdio.h>
#include <stdlib.h>

int main()
{
    float num1,num2,sum,sum1,sum2,sum3,sum4,sum5,next,deg,rad,rad1,rad2,rad3,rad4,rad5,sin,sin1,cos,cos1,tan,tan1, f=1,f1=1,f2=1,f3=1,f4=1,f5=1,pow,pow1,pow2,pow3,pow4,pow5,pow6,pow7,pow8,pow9,pow10,pow11,pow12,pow13,pow14,pow15,pow16,pow17,pow18,pow19,pow20,pow21,pow22,pow23;
    int operation=1,op;
    char n;



    printf("please selected operation from the list below:\n1-Add the two numbers.\n2-Multiply the two numbers. \n3-Dividing the two numbers. \n4-min of numbers");
    printf("\n5-sin(x).\n6-cos(x). \n7-tan(x).\n8-square.\n9-Triangle.\n10-Rectangle");
    printf("\nEnter Your choice: ");
    scanf("%d",&op);
          for(int i=1;i<=3;i++){
           f=f*i;
          }
           for(int i=1;i<=5;i++){
           f1=f1*i;
          }

          for(int i=1;i<=7;i++){
           f2=f2*i;
          }
          for(int i=1;i<=2;i++){
           f3=f3*i;
          }
           for(int i=1;i<=4;i++){
           f4=f4*i;
          }
           for(int i=1;i<=6;i++){
           f5=f5*i;
          }

    if(op == 1)
    {
        printf("please enter the first number:\n");
        scanf("%f",&num1);
        printf("please enter the second number:\n");
        scanf("%f",&num2);
        sum=num1+num2;
        printf("\nThe result of adding is: %0.2f \n\n",sum);
    }
    else if(op == 2)
    {
        printf("please enter the first number:\n");
        scanf("%f",&num1);
        printf("please enter the second number:\n");
        scanf("%f",&num2);
        sum = num1* num2 ;
        printf("\nThe result of multiply is: %f\n\n",sum);
    }
    else if (op == 3)
    {
        printf("please enter the first number:\n");
        scanf("%f",&num1);
        printf("please enter the second number:\n");
        scanf("%f",&num2);
        sum = num1 / num2;
        printf("\nThe result of Dividing is: %f\n\n",sum);
    }
     else if(op == 4)
    {
        int ln;
        printf("please enter the size of list numbers.\n");
        scanf("%d", &ln);
        min(ln);
    }
    else if (op == 5)
    {
        printf("Enter angle in degree\n");
        scanf("%f",&sum);
        rad=(3.142/180)*sum;
        pow=(rad*rad*rad);
        pow1=(rad*rad*rad*rad*rad);
        pow2=(rad*rad*rad*rad*rad*rad*rad);
        sin = rad - (pow/ f) + (pow1 / f1) - (pow2/ f2) ;
        printf("\nsin(%f)=%f\n\n",sum,sin);
    }
    else if (op == 6)
    {

        printf("Enter angle in degree\n");
        scanf("%f",&sum);

        rad=(3.142/180)*sum;
        pow3=(rad*rad);
        pow4=(rad*rad*rad*rad);
        pow5=(rad*rad*rad*rad*rad*rad);

        cos= 1- (pow3/ f3) + (pow4 / f4) - (pow5 / f5);
        printf("\ncos(%f)=%f\n\n",sum,cos);
    }
    else if (op == 7)
    {

        printf("Enter angle in degree\n");
        scanf("%f",&sum);
        rad=(3.142/180)*sum;
        pow6=(rad*rad);
        pow7=(rad*rad*rad*rad);
        pow8=(rad*rad*rad*rad*rad*rad);
        pow9=(rad*rad*rad);
        pow10=(rad*rad*rad*rad*rad);
        pow11=(rad*rad*rad*rad*rad*rad*rad);
        tan = (rad - pow6/ f + pow7/ f1 - pow8/ f2)/(1- pow9/ f3 + pow10 / f4 - pow11 / f5);

        printf("\ntan(%f)=%f\n\n",sum,tan);
    }
    else if (op == 8)
    {
        printf("\nEnter your number\n");
        scanf("%f",&num1);
        sum = num1 * num1;
        printf("\nThe result of square is: %f\n\n",sum);
    }
    else if (op == 9)
    {
        Triangle();
    }
    else if (op == 10)
    {
        Rectangle();
    }
    else
    {
        printf("\nSorry you are input invalid number\n\n");
        operation =100 ;
    }



    while(operation !=100)
    {
        printf("please selected operation from the list below to do action on last result:\n1-Add number to result.\n2-Multiply number to result. \n3-Dividing number to result. \n4-min of numbers");
        printf("\n5-sin(x).\n6-cos(x). \n7-tan(x).\n8-square.\n9-Triangle.\n10-Rectangle\n11-to restart.");
        printf("\n0-to finish.\nEnter Your choice: ");
        scanf("%d",&op);

    if(op == 1)
    {
        printf("\nEnter the number to be added to the result\n");
        scanf("%f",&next);
        sum+=next;
        printf("\nThe result of adding is: %f\n\n",sum);
    }
    else if(op == 2)
    {
        printf("\nEnter the number to be multiplied by the result\n");
        scanf("%f",&next);
        sum*=next;
        printf("\nThe result of multiply is: %f\n\n",sum);
    }
    else if(op == 3)
    {
        printf("\nEnter the number to be divided by the result\n");
        scanf("%f",&next);
        sum /= next;
        printf("\nThe result of Dividing is: %f\n\n",sum);
    }
     else if(op == 4)
    {
        int ln;
        printf("please enter the size of list numbers.\n");
        scanf("%d", &ln);
        min(ln);
    }
    else if (op == 5)
    {

        printf("Enter angle in degree\n");
        scanf("%f",&sum);
        rad=(3.142/180)*sum;
        pow=(rad*rad*rad);
        pow1=(rad*rad*rad*rad*rad);
        pow2=(rad*rad*rad*rad*rad*rad*rad);
        sin1 = rad - (pow/ f) + (pow1 / f1) - (pow2/ f2) ;
         printf("\nsin(%f)=%f\n\n",sum,sin1);
    }
    else if (op == 6)
    {

        printf("Enter angle in degree\n");
        scanf("%f",&sum);

        rad=(3.142/180)*sum;
        pow3=(rad*rad);
        pow4=(rad*rad*rad*rad);
        pow5=(rad*rad*rad*rad*rad*rad);

        cos1= 1- (pow3/ f3) + (pow4 / f4) - (pow5 / f5);
        printf("\ncos(%f)=%f\n\n",sum,cos1);
    }
    else if (op == 7)
    {


        printf("Enter angle in degree\n");
        scanf("%f",&sum);
        rad=(3.142/180)*sum;
        pow6=(rad*rad);
        pow7=(rad*rad*rad*rad);
        pow8=(rad*rad*rad*rad*rad*rad);
        pow9=(rad*rad*rad);
        pow10=(rad*rad*rad*rad*rad);
        pow11=(rad*rad*rad*rad*rad*rad*rad);
        tan1 = (rad - (pow6/ f) + (pow7/ f1) - (pow8/ f2))/(1- (pow9/ f3) + (pow10 / f4) - (pow11 / f5));

        printf("\ntan(%f)=%f\n\n",sum,tan1);
    }
    else if (op == 8)
    {
        printf("\nEnter your number\n");
        scanf("%f",&num1);
        sum = num1 * num1;
        printf("\nThe result of square is: %f\n\n",sum);
    }
    else if (op == 9)
    {
        Triangle();
    }
    else if (op == 10)
    {
        Rectangle();
    }
    else if(op == 11)
    {

      system("cls");
      main();

    }
    else if (op == 0)
    {
        operation =100;
        printf("\nThank you(*-*)\n\n");
        break;
    }
    else
    {
        printf("\nSorry you are input invalid number\n\n");
        operation = 100;
        break;
    }
    }


    return 0;
}

void min(int size) {

   int a[size], i, numbe, smallest;
   printf("\nEnter your numbers : \n");

   for (i = 0; i < size; i++)
      scanf("%d", &a[i]);
      smallest = a[i];

      findmin(smallest,size,a);

}
void findmin(int smallest , int size , int a[]){
int i;
for (i = 0; i < size; i++) {
      if (a[i] < smallest) {
         smallest = a[i];
      }
   }
    printf("\nSmallest Element : %d \n\n", smallest);

}

void Triangle(){

      int side1, side2, side3;

      printf("\nPlease Enter Three Sides of a Triangle : \n");
      scanf("%d%d%d", &side1, &side2, &side3);

      if( (side1 + side2 > side3) && (side2 + side3 > side1) && (side1 + side3 > side2) )
      {
          printf("\nThis is a  Triangle\n\n");
      }
      else
      {
        printf("\nThis is not Triangle\n\n");
      }

}

void Rectangle(){


    int l1, w1, l2, w2;
    printf("\nPlease Enter four Sides of a Rectangle : \n");
    scanf("%d%d%d%d", &l1, &w1, &l2, &w2);

    if (l1 == l2 && w1 == w2 && l1 != w1 && l2 != w2)
        printf("\nThis is Rectangle\n\n");
    else
        printf("\nThis is not Rectangle\n\n");

}



