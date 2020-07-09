#ifndef __TRUNK_XE_RESETTING_SOURCE_H__
#define __TRUNK_XE_RESETTING_SOURCE_H__

#include "source_decorator.hpp"
#include "transform.hpp"
#include "sink.hpp"


namespace trunk { namespace xe {

template<typename Context>
class ResettingSource : public SourceDecorator<Context>
{
public:
    ResettingSource(Source<Context>& s) : SourceDecorator<Context>(s) {}
    ~ResettingSource() final {}
};

}} // namespace trunk::xe


#endif // __TRUNK_XE_RESETTING_SOURCE_H__
