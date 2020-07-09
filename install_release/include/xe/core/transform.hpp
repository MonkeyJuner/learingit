#ifndef __TRUNK_XE_TRANSFORM_H__
#define __TRUNK_XE_TRANSFORM_H__

#include "element.hpp"
#include "sink.hpp"


namespace trunk { namespace xe {

template<typename Context>
class _Transform : public _Element<Context>
{
public:
    _Transform(std::string name = "transform") :
        _Element<Context>(nullptr, name) {}

    virtual ~_Transform() {}

    void precompute() override {
        std::cout << _Element<Context>::name() << "| Transform::precompute" << std::endl;
    }

    void compute() override {
        std::cout << _Element<Context>::name() << "| Transform::compute" << std::endl;
    }

    void postcompute() override {
        std::cout << _Element<Context>::name() << "| Transform::postcompute" << std::endl;
    }
};

}} // namespace trunk::xe


#endif // __TRUNK_XE_TRANSFORM_H__
