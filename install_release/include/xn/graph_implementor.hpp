#ifndef __TRUNK_XN_GRAPH_IMPLEMENTOR_HPP__
#define __TRUNK_XN_GRAPH_IMPLEMENTOR_HPP__

#include <vector>


namespace trunk { namespace xn {

template<typename NodeID, typename EdgeValue>
class GraphImplementor
{
protected:
    virtual ~GraphImplementor() {}

public:
    virtual GraphImplementor& from(NodeID id) {
        _from_id = id;
        return *this;
    }

    virtual GraphImplementor& to(NodeID id) = 0;

    virtual GraphImplementor& weight(EdgeValue v) {}

    std::size_t size() const {
        return _size;
    }

    virtual std::vector<NodeID> in_nodes(NodeID id) {
        return {};
    }

    virtual std::vector<NodeID> out_nodes(NodeID id) {
        return {};
    }

protected:
    NodeID _from_id; // use it to implement from . to interface
    std::size_t _size;
};

}} // namespace trunk::xn


#endif // __TRUNK_XN_GRAPH_IMPLEMENTOR_HPP__
