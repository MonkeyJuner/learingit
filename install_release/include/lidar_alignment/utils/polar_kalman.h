#ifndef POLOR_KALMAN_H
#define POLOR_KALMAN_H

#include <opencv2/opencv.hpp>


class BaseKalmanFilter
{
public:
    BaseKalmanFilter();
    ~BaseKalmanFilter();

    int predict();
    int update(
            const cv::Mat& z
    );


public:
    cv::Mat x_;
    cv::Mat A_; // 状态转移矩阵
    cv::Mat P_; // kalman里面的P
    cv::Mat H_; // 观测矩阵

    cv::Mat Q_; // 状态误差
    cv::Mat R_; // 观测误差

};


class PolarKalman
{
public:
    PolarKalman();
    PolarKalman(
            const int& mode,
            const double& measure_noise,
            const double& state_s_noise,
            const double& state_v_noise
    );
    ~PolarKalman();
    
    void reset();
    int init(
        const double &new_time,
        const double &x
    );
    int predict(
            const double &new_time
    );
    int update(
            const double& x
    );

public:
    BaseKalmanFilter kalman_filter_;
    double old_time_;
    bool is_initialized;

private:
    int counter_;
    int mode_; // 0表示匀速，1表示静止
    double state_s_noise_;
    double state_v_noise_;
    double measure_noise_;

};

class PolarKalman1
{
public:
    PolarKalman1();
    ~PolarKalman1();

    int init(
            const double &new_time,
            const double &x
    );
    int predict(
            const double &new_time
    );
    int update(
            const double& x
    );

public:
    BaseKalmanFilter kalman_filter_;
    double old_time_;
    bool is_initialized;

private:
    int counter_;

};





#endif