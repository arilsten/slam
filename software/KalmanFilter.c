/************************************************************************/
// File:            kalmanFilter.h                                      //
// Author:          Leithe                                              //
// Purpose:         Kalman filter                                       //
//                                                                      //
/************************************************************************/

#include "kalmanFilter.h"
#include "matrix_operations.h"
#include "FreeRTOS.h"

#define N_constant 8
#define M_constant 7
#define p 0.04

float X[N_constant]; //states in order x_pos, x_speed, x_acc, y_pos, y_speed, y_acc, theta, theta_hat
float P[N_constant*N_constant];
float Q[N_constant*N_constant];
float R[M_constant*M_constant];
float H[M_constant*N_constant];
float Phi[N_constant*N_constant];

float TEMP_HPH[M_constant*M_constant];
float TEMP_INVERSE[M_constant*M_constant]; 
float temp0[N_constant*N_constant];
float temp1[N_constant*N_constant];
float temp2[N_constant*M_constant];
float temp3[N_constant*M_constant];
float temp4[M_constant]; 
float temp5[N_constant];

int N;
int M;

//functions to set value of row m column n, 0 indexed
void kf_setH(int16_t m,int16_t n,float value){
H[N*m + n]=value;}

void kf_setPhi(int16_t m,int16_t n,float value){
Phi[N*m + n]=value;}

void kf_setQ(int16_t m,int16_t n,float value){
Q[N*m +n]=value;}

void kf_setR(int16_t m,int16_t n,float value){
R[M*m +n]=value;}


void kf_setEncoderVar(float value){
      kf_setR(4,4,value);
}
void kf_setGyroVar(float value){
    kf_setR(5,5,value);
    }


void kf_setPeriod(float value){
    if (value > 1 || value < 0 ){return;} //dont allow periods over 1 or negative
    kf_setPhi(0,1,value);
    kf_setPhi(1,2,value);
    kf_setPhi(3,4,value);
    kf_setPhi(4,5,value);
    kf_setPhi(6,7,value);
    }



void kf_init(int16_t m, int16_t n){
	//allocate data structures
	N = n;
	M = m;
		//0 out data structures
	zeros(X,N,1);
	zeros(P,N,N);
	zeros(Q,N,N);
	zeros(R,M,M);
	zeros(H,M,N);
	zeros(Phi,N,N);
	//set initial P
	mat_addeye(P,N);
	//set Q
	
	kf_setQ(0,0,0.0001);
	kf_setQ(1,1,0.01);
	kf_setQ(2,2,0.01);//0.05
	kf_setQ(3,3,0.0001);
	kf_setQ(4,4,0.01);
	kf_setQ(5,4,0.01);
	kf_setQ(6,6,0.0001);
	kf_setQ(7,7,5.1);//0.1
	//set R

	kf_setR(0,0,0.02);  //Var encoder fwd
	kf_setR(1,1,0.03);  // var accel
	kf_setR(2,2,0.02);  //var encoder fwd
	kf_setR(3,3,0.03);   //var accel
	kf_setR(4,4,0.3);   //var encoderTurn
	kf_setR(5,5,0.0134);//var gyro
	kf_setR(6,6,0.25); //var mag(thetea measurement)
	
	//set H

	kf_setH(0,1,1);
	kf_setH(1,2,1);
	kf_setH(2,4,1);
	kf_setH(3,5,1);
	kf_setH(4,7,1);
	kf_setH(5,7,1);
	//set Phi

	mat_addeye(Phi,N);
	kf_setPhi(0,1,0.04);
	kf_setPhi(1,2,0.04);
	kf_setPhi(3,4,0.04);
	kf_setPhi(4,5,0.04);
	kf_setPhi(6,7,0.04);
          
}


int kf_step(float* Z){

	//X_prior= Phi*x_prior_-1
	mulmat(Phi, X, temp5, N, N, 1); //result N*1
	zeros(X,N,1);
	accum(X,temp5,N,1);  //move result to X
	
        
        //P_P = Phi*P_P_-1*transpose(Phi)+Q
	mulmat(Phi, P, temp1, N, N,N);//result N*N
	transpose(Phi,temp0,N,N); //Result N*N
	mulmat(temp1, temp0,P, N , N, N);//result N*N
	accum(P, Q, N, N);


	//K =P_prior*transpose(H)*inv(H*p_prior*transpose(H)+R)
	transpose(H,temp2,M,N);  //result N*M
	

	mulmat(H, P,temp3,M,N,N); //result M*N
	mulmat(temp3,temp2,TEMP_HPH,M,N,M); //result M*M
	accum(TEMP_HPH,R,M,M);
	mulmat(P,temp2,temp3,N,N,M); //result N*M
	//TAKE INVERSE
	if (cholsl(TEMP_HPH, TEMP_INVERSE, temp5, M)){
        return 0;
         }
	mulmat(temp3,TEMP_INVERSE,temp2,N,M,M);//result N*M


	//X_estimate = X_p + K(Z-H*X_p)
	mulmat(H, X,temp4, M , N, 1); //result m*1
	sub(Z,temp4,temp4,M);  //result M*1
	mulmat(temp2, temp4,temp5,N,M,1); //result N*1
	accum(X, temp5,N,1);

	
        
        //P= (I-K*H)*P_p
	mulmat(temp2,H,temp1,N,M,N); //result N*N
	negate(temp1, N, N);
	mat_addeye(temp1,N);
	mulmat(temp1,P,temp0,N,N,N ); //result N*N
	zeros(P,N,N);
        accum(P,temp0,N,N);//move result to P
       	
	return 1;
}




state kalmanGetState(){
      state res;
      res.x=X[0];
      res.y=X[3];
      res.heading=X[6];
      return res;
}
