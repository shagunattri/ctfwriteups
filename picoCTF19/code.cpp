#include<iostream>
using namespace std;

char ar[32] = 'jU5t_a_sna_3lpm17ga45_u_4_mbrf4c';



void charAt(){

}


void logic(){
    int i;


    for (i=0; i<8; i++) {
            buffer[i] = charAt(i);
        }
        for (; i<16; i++) {
            buffer[i] = charAt(23-i);
        }
        for (; i<32; i+=2) {
            buffer[i] = charAt(46-i);
        }
        for (i=31; i>=17; i-=2) {
            buffer[i] = charAt(i);
        }
    
}
        