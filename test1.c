void main(){
    //給三邊長判斷能不能形成三角形
    int a=5;
    int b=10;
    int c=12;
    int temp;
    printf("\n(test1.c)\n給三邊長判斷能不能形成三角形:\n");
    printf("a=%d b=%d c=%d\n",a,b,c);
    if(a>c){
        temp=c;
        c=a;
        a=temp;
    }
    if(b>c){
        temp=c;
        c=b;
        b=temp;
    }
    if(c<(a+b)){
        printf("These 3 sides can form a triangle\n\n");
    }else{
        printf("These 3 sides can't form a triangle\n\n");
    }
}