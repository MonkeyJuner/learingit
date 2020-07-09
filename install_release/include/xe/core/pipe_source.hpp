#ifndef __TRUNK_XE_PIPE_SOURCE_HPP__
#define __TRUNK_XE_PIPE_SOURCE_HPP__

#include "source.hpp"


namespace trunk { namespace xe {

template<typename Context>
class _PipeSource : public _Source<Context>
{
public:
    _PipeSource() {}
    virtual ~_PipeSource() {}

    void reduce() {
    }

    virtual void compute() override {
    }

private:
    ContextPtr __context_cache_q;
};

}}


#endif // __TRUNK_XE_PIPE_SOURCE_HPP__
