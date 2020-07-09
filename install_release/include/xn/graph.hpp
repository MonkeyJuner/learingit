#ifndef __TRUNK_XN_GRAPH_HPP__
#define __TRUNK_XN_GRAPH_HPP__

#include "node.hpp"
#include "edge.hpp"
#include "graph_implementor.hpp"
#include "adjacency_list.hpp"
#include "adjacency_matrix.hpp"

#include <vector>
#include <queue>
#include <stack>
#include <unordered_map>
#include <iostream>


namespace trunk { namespace xn {

struct EnumClassHash
{
    template <typename T>
    std::size_t operator()(T t) const {
        return static_cast<std::size_t>(t);
    }
};

template <typename Key>
using HashType = typename std::conditional<std::is_enum<Key>::value,
                                           EnumClassHash,
                                           std::hash<Key> >::type;

template <typename NodeID=int,
          typename NodeValue=int,
          typename EdgeValue=int,
          typename NodeType=Node<NodeID, NodeValue>,
          typename EdgeType=Edge<NodeID, EdgeValue>,
          typename Implementor=AdjacencyList<NodeID, EdgeValue> >
class Graph
{
public:
    Graph(std::vector<EdgeType>& edges, size_t nn) : __implementor(nn), __edges(edges) {
        for (auto& edge_: edges)
        {
            __implementor.from(edge_.first()).to(edge_.second());

            auto search = __node_map.find(edge_.first());
            if (search == __node_map.end())
                __node_map[edge_.first()] = new NodeType(edge_.first());

            search = __node_map.find(edge_.second());
            if (search == __node_map.end())
                __node_map[edge_.second()] = new NodeType(edge_.second());
        }
    }

    std::size_t size() const {
        return __implementor.size();
    }

    virtual ~Graph() {

    }

    NodeType* node(NodeID id) {
        return __node_map[id];
    }

    /*
    void tranverse(NodeID id) {
        __implementor.dfs(id);
    }

    void sort() {
        __implementor.topological_sort();
    }

    void print() {
        __implementor.print();
    }
    */

    void bfs(NodeID s) {
        // Mark all the vertices as not visited
        std::unordered_map<NodeID, bool> visited;
        for (auto& d : __node_map)
            visited[d.first] = false;

        // Create a queue for BFS
        std::queue<NodeID> queue;

        // Mark the current node as visited and enqueue it
        visited[s] = true;
        queue.push(s);

        while (!queue.empty())
        {
            // Dequeue a vertex from queue and print it
            s = queue.front();
            std::cout << s << " ";

            queue.pop();

            // Get all adjacent vertices of the dequeued
            // vertex s. If a adjacent has not been visited,
            // then mark it visited and enqueue it
            for (auto i : __implementor.out_nodes(s))
                if (!visited[i])
                {
                    visited[i] = true;
                    queue.push(i);
                }
        }
        std::cout << std::endl;
    }

    // A recursive function used by topologicalSort
    void topological_sort_util(NodeID v,
                               std::unordered_map<NodeID, bool>& visited,
                               std::stack<NodeID>& stack) {
        // Mark the current node as visited.
        visited[v] = true;

        // Recur for all the vertices adjacent to this vertex
        // for (auto i = __data[v].begin(); i != __data[v].end(); ++i)

        for (auto& id : __implementor.out_nodes(v))
            if (!visited[id])
                topological_sort_util(id, visited, stack);

        // Push current vertex to stack which stores result
        stack.push(v);
    }

    // The function to do Topological Sort. It uses recursive
    // topologicalSortUtil()
    std::vector<NodeID> topological_sort() {
        std::vector<NodeID> ordered_nodes;
        std::stack<NodeID> stack;

        // Mark all the vertices as not visited
        std::unordered_map<NodeID, bool> visited;
        for (auto& d : __node_map)
            visited[d.first] = false;

        // Call the recursive helper function to store Topological
        // Sort starting from all vertices one by one
        for (auto& d : __node_map)
            if (!visited[d.first])
                topological_sort_util(d.first, visited, stack);

        // Print contents of stack
        while (!stack.empty())
        {
            ordered_nodes.push_back(stack.top());
            stack.pop();
        }

        return ordered_nodes;
    }

    void tranverse(NodeID id) {
        dfs(id);
    }

    std::vector<NodeID> sort() {
        return topological_sort();
    }

    void print() {
        for (auto d : __node_map)
        {
            std::cout << d.first << ": ";
            for (auto adj_id : __implementor.out_nodes(d.first))
                std::cout << adj_id << ' ';
            std::cout << std::endl;
        }
    }

    std::vector<NodeID> in_nodes(NodeID id) {
        return __implementor.in_nodes(id);
    }

    const EdgeValue at(NodeID from, NodeID to) const {
        for (auto& edge: __edges)
            if (edge.first() == from && edge.second() == to)
            {
                return edge.value();
            }
        return "none";
    }

private:
    // std::vector<std::vector<NodeID> > __adj_list;
    // AdjacencyList<NodeID> __adj_list;
    Implementor __implementor;
    std::unordered_map<NodeID, NodeType*, HashType<NodeID> > __node_map;
    std::vector<EdgeType> __edges;
};

}} //    std::unordered_map<NodeID, bool> __visited_map;


#endif // __TRUNK_XN_GRAPH_HPP__
