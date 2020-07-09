#ifndef __TRUNK_XN_EDGE_H__
#define __TRUNK_XN_EDGE_H__

#include <utility>


namespace trunk { namespace xn {

template<typename NodeID=int,
         typename EdgeValue=int>
class Edge
{
public:
    Edge(NodeID n1, NodeID n2) : __node_id_map({n1, n2}) {}
    Edge(NodeID n1, NodeID n2, EdgeValue v) : Edge(n1, n2) {
        __value = v;
    }

    virtual ~Edge() {}

    NodeID first() const {
        return __node_id_map.first;
    }

    NodeID second() const {
        return __node_id_map.second;
    }

    const EdgeValue& value() const {
        return __value;
    }

    void value(EdgeValue v) {
        __value = v;
    }

private:
    std::pair<NodeID, NodeID> __node_id_map;
    EdgeValue __value;
};

template<typename NodeID=int>
using EdgeList = Edge<NodeID>;

}} // namespace trunk::xn


#endif // __TRUNK_XN_EDGE_H__
