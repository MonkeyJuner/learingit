#ifndef _EKF_FUSION_H_
#define _EFK_FUSION_H_

#include "Lu_Matrix.h"
#include "stdio.h"
#include <string>
#include <vector>
#include <deque>

class EkfFusion{
public:
	EkfFusion();
	
	~EkfFusion(){};

	void Init(double x, double y, double yaw);

	void Predict(double speed, double yaw_rate, double cur_time_sec);

	bool ObsUpdatePose(double x, double y, double phi);

	bool ObsUpdatePosition(double x, double y);

	void SetFilterName(std::string name);

	void SetSpeedError(double speed_error);
 
	void SetYawRateError(double yaw_rate_error);

	std::string GetFilterName();
// 
	double GetSpeedError();

	double GetYawRateError();

	void Reset();

	void ResetState(double& x, double& y, double& yaw);

	Lu_Matrix GetState();

	void GetState(double& x, double& y, double& yaw);

	void GetState(std::vector<double>& state);

	void GetXPMatrix(Lu_Matrix& x, Lu_Matrix& p);
 
	void SetXPMatrix(Lu_Matrix x_matrix, Lu_Matrix p_matrix);

	void SetObsUpdateR(double R00, double R11, double R22);

	bool IsInitialized();

	bool IsFirstPredict();

	bool IsFirstUpdate();

	void ReserveState();
	
	void RestoreState();

	void RestorePrediction();

	EkfFusion& operator = (EkfFusion &ekf);

private: 
	void ClearSum();

	void StatePredict(Lu_Matrix U_input,Lu_Matrix Q_input);
	
	void ObsUpdate(Lu_Matrix obs, Lu_Matrix R_obs);

private:
	std::string name_;

	bool first_predict_;
	bool first_update_;
	bool initialized_;

	Lu_Matrix R_obs_;
	Lu_Matrix P_pre_;
	Lu_Matrix X_pre_;

	int X_dim_;
	
	bool predict_first_time_;
	double predict_stamp_;
	double predict_stamp_last_;

	double speed_;
	double speed_last_;
	double speed_error_;

	double yaw_rate_;
	double yaw_rate_last_;
	double yaw_rate_error_;

	double odom_incr_;
	double odom_incr_sum_;
	double yaw_incr_;
	double yaw_incr_sum_;
	double stamp_delta_sum_;

	bool reserve_prediction_;
	std::deque<float> odom_incr_sum_deq_;
	std::deque<float> yaw_incr_sum_deq_;
	std::deque<double> stamp_delta_sum_deq_;
	Lu_Matrix R_obs_reserved_;
	Lu_Matrix P_pre_reserved_;
	Lu_Matrix X_pre_reserved_;

};
#endif

//_EFK_FUSION_H_
