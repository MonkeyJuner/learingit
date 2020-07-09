#ifndef __TRUNK_XE_PIPELINE_HPP__
#define __TRUNK_XE_PIPELINE_HPP__

#include "../element.hpp"
#include "../source.hpp"
#include "../transform.hpp"
#include "../sink.hpp"

// #include "context.hpp"

#include <vector>
#include <unordered_map>
#include <boost/any.hpp>
#include <utility>
#include <stack>


namespace trunk { namespace xe {

typedef std::unordered_map<std::string, boost::any> Context;

typedef struct _Pipeline pl;

struct _Pipeline
{
    _Pipeline() = delete;

    static void begin(std::shared_ptr<Source<Context> > source_q_,
                      std::shared_ptr<Context>& ctx_q_) {
        if (ctx_q_)
        {
            source_q_->attach(ctx_q_);

            if (source_q_->is_activated())
                source_q_->precompute();
            if (source_q_->is_activated())
                source_q_->compute();
            if (source_q_->is_activated())
                source_q_->postcompute();
        }

        source_q_->activate();

        Element<Context>::store(source_q_);

        __context_stack.push(ctx_q_);
    }

    static void end() {
        Element<Context>::cleanup();

        if (Element<Context>::is_cutted())
            Element<Context>::reset();

        __context_stack.pop();
    }

    static std::stack<std::shared_ptr<Context> > __context_stack;
};

std::stack<std::shared_ptr<Context> > _Pipeline::__context_stack;

}} // namespace trunk::xe

#endif // __TRUNK_XE_PIPELINE_HPP__
