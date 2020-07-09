#ifndef __TRUNK_XE_PIPELINE_PIPELINE_H__
#define __TRUNK_XE_PIPELINE_PIPELINE_H__

#include "context.h"

#include "xe/core/element.hpp"
#include "xe/core/source.hpp"
#include "xe/core/transform.hpp"
#include "xe/core/sink.hpp"

#include "xe/adapter/ros/subscriber_source.hpp"
#include "xe/adapter/ros/publisher_sink.hpp"

#include <vector>
#include <unordered_map>
#include <boost/any.hpp>
#include <utility>
#include <stack>
#include <deque>


namespace trunk { namespace xe {

typedef _Element<Context> Element;
typedef std::shared_ptr<Element> ElementPtr;
typedef _Source<Context> Source;
typedef std::shared_ptr<Source> SourcePtr;
typedef _Transform<Context> Transform;
typedef std::shared_ptr<Transform> TransformPtr;
typedef _Sink<Context> Sink;
typedef std::shared_ptr<Sink> SinkPtr;

typedef _SubscriberSource<Context> SubscriberSource;
typedef std::shared_ptr<SubscriberSource> SubscriberSourcePtr;
typedef _PublisherSink<Context> PublisherSink;
typedef std::shared_ptr<PublisherSink> PublisherSinkPtr;


typedef struct _Pipeline pl;

class _Pipeline
{
public:
    enum class Type {
        ROOT,
        CHILD
    };

public:
    _Pipeline() = delete;

    static void begin(Source& source_) {
        ContextPtr ctx_q = std::make_shared<Context>();

        if (ctx_q)
        {
            source_.attach(ctx_q);
            Element::store(&source_);
            __context_stack.push(ctx_q);
        }
    }

    static void begin(Element& element_, ContextPtr& ctx_q_) {
        if (ctx_q_)
        {
            element_.attach(ctx_q_);
            Element::store(&element_);

            if (!element_.is_initialized())
                element_.init();

            if (element_.is_activated())
                element_.precompute();

            if (element_.is_activated())
                element_.compute();

            if (element_.is_activated())
                element_.postcompute();

            element_.activate();

            __context_stack.push(ctx_q_);
        }
    }

    static void begin(Element& element_, ContextPtr&& ctx_q_) {
        if (ctx_q_)
        {
            element_.attach(ctx_q_);
            Element::store(&element_);

            if (!element_.is_initialized())
                element_.init();

            if (element_.is_activated())
                element_.precompute();

            if (element_.is_activated())
                element_.compute();

            if (element_.is_activated())
                element_.postcompute();

            element_.activate();

            __context_stack.push(ctx_q_);
        }
    }

    static void end() {
        Element::cleanup();
        __context_stack.pop();
    }

    static void end_with_cache() {
        Element::cleanup();

        size_t diff = __context_queue.size() - __cache_size;

        if (diff >= 0)
            do
                __context_queue.pop_front();
            while (diff--);
        __context_queue.push_back(__context_stack.top());

        __context_stack.pop();
    }

    // start new set / get

    template<typename T>
    static void get(const std::string& key, std::shared_ptr<T>& value_ptr) {
        __gctx_q->get(key, value_ptr);
    }

    template<typename T>
    static std::shared_ptr<T> get(const std::string& key) {
        return __gctx_q->get<T>(key);
    }

    template<typename T>
    static void set(const std::string& key, const T& value) {
        __gctx_q->set<T>(key, value);
    }

    template<typename T>
    static void set(const std::string& key, std::shared_ptr<T>& value_ptr) {
        __gctx_q->set<T>(key, value_ptr);
    }

    static void nullify(const std::string& key) {
        __gctx_q->nullify(key);
    }

    static bool is_nullptr(const std::string& key) {
        return __gctx_q->is_nullptr(key);
    }

    static size_t erase(const std::string& key) {
        return __gctx_q->erase(key);
    }

    static bool is_key(const std::string& key) {
        return __gctx_q->is_key(key);
    }

    // end new set / get

    static void cache_size(size_t key) {
        __cache_size = key;
    }

    static const size_t& cache_size() {
        return __cache_size;
    }

    template<typename T>
    static void get_const(const std::string& key,
                          std::shared_ptr<const T>& value_ptr,
                          int diff = 0) {
        if (diff > 0)
        {
            if (diff > __cache_size)
                diff = __cache_size;

            if (diff > __context_queue.size())
                ;
            else
                __context_queue.at(diff - 1)->get(key, value_ptr);
        }
        else
            __gctx_q->get(key, value_ptr);
    }

private:
    static size_t __cache_size;
    static ContextPtr __gctx_q;
    static std::stack<ContextPtr> __context_stack;
    static std::deque<ContextPtr> __context_queue;
};

}} // namespace trunk::xe

#endif // __TRUNK_XE_PIPELINE_PIPELINE_H__
