void main(){
   int i;
   int j;
   int sum=0;
   float f1;
   float f2;
   float f3;

   for(i=1;i<=10;++i){
      sum = sum +i;
   }
   printf("\n(test2.c)\n1+2+3+..+10=%d\n\n",sum);

   prtinf("基本運算測試:");
   j=2;
   printf("j=2 => j+2*(100-1)=%d\n\n",j+2*(100-1));
   
   printf("兩層while迴圈測試:\n");
   i=0;
   while(i<=1){
        j=0;
        while(j<=1){
            printf("%d %d\n",i,j);
            ++j;
        }
        ++i;
   }
   printf("\n");

   printf("兩層for迴圈測試:\n");
   for(i=0;i<=1;++i){
        for(j=0;j<=1;++j){
            printf("%d %d\n",i,j);
        }
   }
   printf("\n");

   i=1;
   printf("1<<2=%d\n\n",i<<2);

   f1=1.5;
   f2=2.5;
   printf("f1=%f f2=%f\n",f1,f2);
   if(f2>f1){
       printf("f2>f1\n");
       if(f1<1.2){
            printf("f1<1.2\n");
       }else{
            printf("f1>1.2\n");
       }
   }else{
       printf("f2<f1\n");
   }

}
