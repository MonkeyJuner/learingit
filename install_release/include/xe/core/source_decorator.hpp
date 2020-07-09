#ifndef __TRUNK_XE_SOURCE_DECORATOR_H__
#define __TRUNK_XE_SOURCE_DECORATOR_H__

#include "source.hpp"
#include "transform.hpp"
#include "sink.hpp"


namespace trunk { namespace xe {

template<typename Context>
class SourceDecorator : public Source<Context>
{
public:
    SourceDecorator(Source<Context>& e) {
        __target = &e;
    }

    virtual ~SourceDecorator() {}


private:
    Source<Context>* __target;
};

}} // namespace trunk::xe


#endif // __TRUNK_XE_SOURCE_DECORATOR_H__
