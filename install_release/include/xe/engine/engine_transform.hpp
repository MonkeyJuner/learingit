#ifndef __TRUNK_XE_ENGINE_TRANSFORM_HPP__
#define __TRUNK_XE_ENGINE_TRANSFORM_HPP__

#include "engine_source.hpp"
#include "xe/pipeline/pipeline.h"

#include "xn/node.hpp"
#include "xn/edge.hpp"
#include "xn/graph.hpp"

#include <vector>
#include <stack>


namespace trunk { namespace xe {

class EngineTransform : public Transform
{
public:
    typedef xn::Graph<int, int, std::string> Graph;
    typedef xn::Edge<int, std::string> Edge;
    typedef std::vector<Edge> Edges;

public:
    EngineTransform() :
        Transform("engine_transform") {}

    void precompute() final {
        try
        {
            EngineSource::Output ptree = boost::any_cast<EngineSource::Output>(
                (*context_pointer())["ptree"]);

            std::cout << "EngineTransform::precompute" << std::endl;

            int i = 0;
            for (auto& v : ptree.get_child("data"))
                __data_map[v.first.data()] = i++;
            /*
            for (auto& v : ptree.get_child("element"))
                __element_map[v.first.data()] = i++;
            */

            Edges edges;
            for (auto& v : ptree.get_child("dependency"))
            {
                Edge edge {__data_map[v.second.get<std::string>("in")],
                           __data_map[v.second.get<std::string>("out")],
                           v.second.get<std::string>("element")};
                edges.push_back(edge);
            }

            __dag_q = std::make_shared<Graph>(edges, __data_map.size());
        }
        catch (boost::bad_any_cast& e)
        {
            std::cerr << e.what() << std::endl;
        }
    }

    void compute() final {
        std::stack<std::string> element_stack;
        std::stack<int> data_stack;

        __dag_q->print();
        for (auto& id : __dag_q->sort())
            data_stack.push(id);

        while (!data_stack.empty())
        {
            auto out = data_stack.top();
            for (auto in: __dag_q->in_nodes(out))
                element_stack.push(__dag_q->at(in, out));
            data_stack.pop();
        }

        try
        {
            EngineSource::Output ptree = boost::any_cast<EngineSource::Output>(
                (*context_pointer())["ptree"]).get_child("element");

            while (!element_stack.empty())
            {
                std::string element = ptree.get<std::string>(element_stack.top());
                auto iter = std::find(__pipeline.begin(),
                                      __pipeline.end(),
                                      element);
                if (iter == __pipeline.end())
                    __pipeline.push_back(element);

                element_stack.pop();
            }
        }
        catch (boost::bad_any_cast& e)
        {
            std::cerr << e.what() << std::endl;
        }

        std::cout << "EngineTransform::compute" << std::endl;
    }

    void postcompute() final {
        for (auto& v: __pipeline)
            std::cout << v << " ";
        std::cout << std::endl;

        (*context_pointer())["pipeline"] = __pipeline;

        std::cout << "EngineTransform::postcompute" << std::endl;
    }

private:
    void __create_directed_acyclic_graph() {
    }

private:
    std::shared_ptr<Graph> __dag_q;
    std::unordered_map<std::string, int> __data_map;
    std::vector<std::string> __pipeline;
    // std::unordered_map<std::string, int> __element_map;
};


}}

#endif // __TRUNK_XE_ENGINE_TRANSFORM_HPP__
