
#pragma once

#include <gtsam/nonlinear/NonlinearFactor.h>
#include <gtsam/base/Matrix.h>
#include <gtsam/base/Vector.h>
#include <gtsam/geometry/Pose2.h>


namespace gtsam {

class GPSPose2Factor: public gtsam::NoiseModelFactor1<gtsam::Pose2> {

private:
    // measurement information
    double mx_, my_;

public:

    /**
     * Constructor
     * @param poseKey    associated pose varible key
     * @param model      noise model for GPS snesor, in X-Y
     * @param m          Point2 measurement
     */
    GPSPose2Factor(gtsam::Key poseKey, const gtsam::Point2 m, gtsam::SharedNoiseModel model) :
        gtsam::NoiseModelFactor1<gtsam::Pose2>(model, poseKey), 
        mx_(m.x()), 
        my_(m.y()) {}

    // error function
    // @param p    the pose in Pose2
    // @param H    the optional Jacobian matrix, which use boost optional and has default null pointer
    gtsam::Vector evaluateError(const gtsam::Pose2& pose, 
        boost::optional<gtsam::Matrix&> H = boost::none) const 
    {
    
        // note that use boost optional like a pointer
        // only calculate jacobian matrix when non-null pointer exists
        if (H) *H = (gtsam::Matrix23() << 1.0, 0.0, 0.0, 
                                          0.0, 1.0, 0.0).finished();
        // return error vector
        return (gtsam::Vector2() << pose.x() - mx_, pose.y() - my_).finished();
    }

};

} // namespace gtsam