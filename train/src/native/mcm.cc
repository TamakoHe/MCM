#include <cstdio>
int main(){
    for(int x=1;x<=45;x++){
        for(int y=1;y<=1000;y++){
            if(x*x-2*y==1){
                printf("x=%d y=%d\n",x,y);
            }
        }
    }
    return 0;
}