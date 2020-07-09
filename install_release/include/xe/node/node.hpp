#ifndef __TRUNK_XE_NODE_HPP__
#define __TRUNK_XE_NODE_HPP__

/*
#include "xe/core/element.hpp"
#include "xe/core/source.hpp"
#include "xe/core/transform.hpp"
#include "xe/core/sink.hpp"
*/
#include "xe/pipeline/pipeline.h"

#include <vector>
#include <unordered_map>
#include <boost/any.hpp>
#include <utility>


namespace trunk { namespace xe {

class Node
{
    /*
public:
    typedef std::unordered_map<std::string, boost::any> Context;
    */

public:
    Node() {
        __ctx_q = std::make_shared<Context>();
    }

    template<typename Source>
    const Source& source(const std::shared_ptr<Source>& source_q) {
        __current = source_q;
        return *source_q;
    }

    template<typename Sink>
    Sink& sink(const std::shared_ptr<Sink>& sink_q) {
        __current->to<Sink>(*sink_q);
        __current = sink_q;
        return *sink_q;
    }

    template<typename T>
    void transforms(T arg) {
        transform(arg);
    }

    template<typename T, typename ... Types>
    void transforms(T arg, Types ... args) {
        transform(arg);
        transforms(args ...);
    }

    template<typename T>
    void transform(const std::shared_ptr<T>& t) {
        __current->to<T>(*t);
        __current = t;
    }

    const ElementPtr current() const {
        return __current;
    }

    void current(const ElementPtr v) {
        __current = v;
    }

private:
    ContextPtr __ctx_q;
    ElementPtr __current;
};


}}

#endif // __TRUNK_XE_NODE_HPP__
