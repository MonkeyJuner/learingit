#ifndef __TRUNK_XE_PIPE_SINK_HPP__
#define __TRUNK_XE_PIPE_SINK_HPP__

#include "sink.hpp"


namespace trunk { namespace xe {

template<typename Context>
class _PipeSink : public _Sink<Context>
{
public:
    _PipeSink() {}
    virtual ~_PipeSink() {}
};

}} // namespace trunk::xe


#endif // __TRUNK_XE_PIPE_SINK_HPP__
