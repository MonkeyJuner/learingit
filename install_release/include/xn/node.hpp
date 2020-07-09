#ifndef __TRUNK_XN_NODE_HPP__
#define __TRUNK_XN_NODE_HPP__

#include <string>


namespace trunk { namespace xn {

template<typename NodeID = int,
         typename NodeValue = int>
class Node
{
public:
    Node(NodeID id) : __id(id) {}

    /*
    Node(NodeValue value) :
        __id(count++),
        __value(value) {}
    */

    Node(NodeID id, NodeValue vlaue) :
        __id(id),
        __value(value) {}

    virtual ~Node() {}

    NodeID id() const {
        return __id;
    }

    NodeValue value() const {
        return __value;
    }

    void value(NodeValue v) {
        __value = v;
    }

    std::string name() const {
        return __name;
    }

    void name(std::string v) {
        __name = v;
    }

private:
    NodeID __id;
    NodeValue __value;
    std::string __name;
};

}} // namespace trunk::xn


#endif // __TRUNK_XN_NODE_HPP__
