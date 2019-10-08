void main(){
    /* gcd */
    int counter;
    int v1=36;
    int v2=12;
    int temp;

    printf("\n(test3.c)\n");
    printf("gcd(%d,%d)=",v1,v2);
    counter=1;

    while(v1%v2!=0){
        temp=v1;
        v1=v2;
        v2=temp%v2;
        ++counter;
    }

    printf("%d, using %d division.\n",v2,counter);
}