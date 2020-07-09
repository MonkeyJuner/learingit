#ifndef __TRUNK_XE_SINK_H__
#define __TRUNK_XE_SINK_H__

#include "element.hpp"


namespace trunk { namespace xe {

template<typename Context>
class _Sink : public _Element<Context>
{
public:
    _Sink() {}
    virtual ~_Sink() {}

    /*
    virtual _Sink<Context>& into(Context& ouput) {
        return *this;
    }

    virtual _Sink<Context>* into2(Context& ouput) {
        return this;
    }
    */

    // computing
    void precompute() override {
        std::cout << "Sink::precompute" << std::endl;
    }

    void compute() override {
        std::cout << "Sink::compute" << std::endl;
    }

    void postcompute() override {
        std::cout << "Sink::postcompute" << std::endl;
    }
};

}} // namespace trunk::xe


#endif // __TRUNK_XE_SINK_H__
