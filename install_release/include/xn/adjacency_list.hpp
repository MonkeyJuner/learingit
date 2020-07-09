#ifndef __TRUNK_XN_ADJACENCY_LIST_HPP__
#define __TRUNK_XN_ADJACENCY_LIST_HPP__

#include "edge.hpp"
#include "graph_implementor.hpp"

#include <vector>
#include <unordered_map>
#include <utility>


namespace trunk { namespace xn {

template<typename NodeID=int,
         typename EdgeValue=int>
class AdjacencyList : public GraphImplementor<NodeID, EdgeValue>
{
public:
    AdjacencyList(std::size_t nn) {
        GraphImplementor<NodeID, EdgeValue>::_size = nn;
        // __data.resize(nn);
    }

    AdjacencyList(EdgeList<NodeID> edge_list, std::size_t nn) {
        GraphImplementor<NodeID, EdgeValue>::_size = nn;
        // __data.resize(nn);

        for (auto& edge_ : edge_list)
            __data[edge_.first()].push_back(edge_.second());
    }

    AdjacencyList& to(NodeID id) final {
        __data[GraphImplementor<NodeID, EdgeValue>::_from_id].push_back(id);
        return *this;
    }

    std::vector<NodeID> in_nodes(NodeID id_) final {
        std::vector<NodeID> in_nodes;
        for (auto d : __data)
            for (auto id : d.second)
                if (id == id_)
                {
                    in_nodes.push_back(d.first);
                    break;
                }
        return in_nodes;
    }

    std::vector<NodeID> out_nodes(NodeID id) final {
        return __data[id];
    }

private:
    // std::vector<std::vector<NodeID> > __data;
    std::unordered_map<NodeID, std::vector<NodeID> > __data;
    std::unordered_map<NodeID, bool> __visited_map;
};

}}


#endif // __TRUNK_XN_ADJACENCY_LIST_HPP__
