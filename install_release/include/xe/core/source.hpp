#ifndef __TRUNK_XE_SOURCE_H__
#define __TRUNK_XE_SOURCE_H__

#include "performance.hpp"

#include "element.hpp"


namespace trunk { namespace xe {

template<typename Context>
class _Source : public _Element<Context>
{
public:
    _Source(std::shared_ptr<Context>& ctx_q) :
        _Element<Context>(ctx_q) {}

    _Source() {
        std::cout << "------------------------------ source::source()" << std::endl;
    }

    /*
    Source(Source& s) {
        std::cout << "------------------------------ source::source(source&)" << std::endl;

        std::shared_ptr<Context> t = s.context();

        attach(t);
    }
    */

    virtual ~_Source() {}

    _Source<Context>& start() {
        XE_PERFORMANCE_TEST(_Element<Context>::name());

        if (!_Element<Context>::is_initialized())
            _Element<Context>::init();

        if (_Element<Context>::is_activated())
            precompute();
        if (_Element<Context>::is_activated())
            compute();
        if (_Element<Context>::is_activated())
            postcompute();

        _Element<Context>::activate();

        return *this;
    }

    virtual _Source<Context>& from(std::shared_ptr<Context>& input) {
        XE_PERFORMANCE_TEST(_Element<Context>::name());

        if (!_Element<Context>::is_initialized())
            _Element<Context>::init();

        if (_Element<Context>::is_activated())
            precompute();
        if (_Element<Context>::is_activated())
            compute();
        if (_Element<Context>::is_activated())
            postcompute();

        _Element<Context>::activate();

        return *this;
    }

    virtual _Source<Context>& from(std::shared_ptr<Context>&& input) {
        XE_PERFORMANCE_TEST(_Element<Context>::name());

        if (!_Element<Context>::is_initialized())
            _Element<Context>::init();

        if (_Element<Context>::is_activated())
            precompute();
        if (_Element<Context>::is_activated())
            compute();
        if (_Element<Context>::is_activated())
            postcompute();

        _Element<Context>::activate();

        return *this;
    }

    virtual _Source<Context>& from(Context& input) {
        return _Source<Context>::from(std::shared_ptr<Context>(&input));
    }

    virtual _Source<Context>& from(Context&& input) {

        return _Source<Context>::from(std::shared_ptr<Context>(&input));
    }

    virtual void precompute() override {
        std::cout << "Source::precompute" << std::endl;
    }

    virtual void compute() override {
        std::cout << "Source::compute" << std::endl;
    }

    virtual void postcompute() override {
        std::cout << "Source::postcompute" << std::endl;
    }
};

}} // namespace trunk::xe

#endif // __TRUNK_XE_SOURCE_H__
