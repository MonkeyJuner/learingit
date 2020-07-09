#ifndef ZHU_EKF_H
#define ZHU_EKF_H

#include "Lu_Matrix.h"
#include "stdio.h"

class ZHU_EKF{
public:
	ZHU_EKF();
	ZHU_EKF(int dim_x,Lu_Matrix X0,Lu_Matrix P0);
	~ZHU_EKF(){};

	void init(int dim_x,Lu_Matrix X0,Lu_Matrix P0);

	void Predict(double CurSpeed,double yawRate,double CurrentTimeInSec,double SpeedError,double yawRateError, double delOdo, double delYaw);

	// bool ObsUpdate(double x,double y,Lu_Matrix R0);
	bool ObsUpdatePose(double x, double y, double phi, Lu_Matrix R0);

	bool ObsUpdatePosition(double x, double y, Lu_Matrix R0);


	Lu_Matrix getState(){
		return Xpre;
	}

	void getXPMatrix(Lu_Matrix &x, Lu_Matrix p){
		x = Xpre;
		p = P_pre;
	}

	void setXPMatrix(Lu_Matrix x_matrix, Lu_Matrix p_matrix){
		Xpre = x_matrix;
		P_pre = p_matrix;
	}

public:
	Lu_Matrix P_pre;
	Lu_Matrix Xpre;

private:
	int dim_X;
	
	double LastSpeed;
	double LastTime;
	double LastYawRate;
	bool   FirstUpdateFlag;

	void State_Predict(Lu_Matrix U_input,Lu_Matrix Q_input);
	
	void Obv_update(Lu_Matrix Obv,Lu_Matrix R_obv);



};


#endif
