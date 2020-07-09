#ifndef __TRUNK_XN_ADJACENCY_MATRIX_HPP__
#define __TRUNK_XN_ADJACENCY_MATRIX_HPP__

#include "edge.hpp"
#include "graph_implementor.hpp"
#include "matrix.hpp"


namespace trunk { namespace xn {

template<typename NodeID=int, typename EdgeValue=int>
class AdjacencyMatrix : public GraphImplementor<NodeID, EdgeValue>
{
public:
    AdjacencyMatrix(std::size_t nn) : __data(nn, nn) {

    }

    AdjacencyMatrix(EdgeList<NodeID> edge_list, std::size_t nn) : __data(nn, nn) {
        for (auto& edge_ : edge_list)
            __data[edge_.first()][edge_.second()] = 1;
    }

    AdjacencyMatrix& to(NodeID id) final {
        // std::size_t from_id_ = static_cast<std::size_t>(GraphImplementor<NodeID>::_from_id);
        // std::size_t to_id_ = static_cast<std::size_t>(id);
        __data[GraphImplementor<NodeID, EdgeValue>::_from_id][id] = 1;
        return *this;
    }

private:
    Matrix<EdgeValue> __data;
};

}}


#endif // __TRUNK_XN_ADJACENCY_MATRIX_HPP__
