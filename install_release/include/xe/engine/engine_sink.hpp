#ifndef __TRUNK_XE_ENGINE_SINK_HPP__
#define __TRUNK_XE_ENGINE_SINK_HPP__

#include "xe/pipeline/pipeline.h"


namespace trunk { namespace xe {

class EngineSink : public Sink
{
public:
    EngineSink() {}

    void compute() final {
        std::cout << "EngineSink::compute" << std::endl;
    }

    void postcompute() final {
        std::cout << "EngineSink::postcompute" << std::endl;
    }
};

}} // namespace trunk::xe


#endif // __TRUNK_XE_ENGINE_SINK_HPP__
