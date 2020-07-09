#ifndef __TRUNK_XE_ENGINE_SOURCE_HPP__
#define __TRUNK_XE_ENGINE_SOURCE_HPP__

#include "xe/pipeline/pipeline.h"

#include <unordered_map>
#include <boost/any.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>


namespace trunk { namespace xe {

class EngineSource : public Source
{
public:
    typedef std::string Input;
    typedef boost::property_tree::ptree Output;

public:
    EngineSource(ContextPtr& ctx_q,
                 Input config_file) :
        input(config_file) {
        if (ctx_q)
        {
            attach(ctx_q);
            precompute();
            compute();
            postcompute();
        }
    }

    void compute() final {
        __read_config_file();
        std::cout << "EngineSource::compute" << std::endl;
    }

    void postcompute() final {
        (*context_pointer())["config"] = input;
        (*context_pointer())["ptree"] = output;
        std::cout << "EngineSource::postcompute" << std::endl;
    }

private:
    void __read_config_file() {
        boost::property_tree::read_json(input, output);
    }

private:
    Input input;
    Output output;
};

}}

#endif // __TRUNK_XE_ENGINE_SOURCE_HPP__
