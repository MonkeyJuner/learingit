#ifndef __TRUNK_XE_NODE_CONTEXT_HPP__
#define __TRUNK_XE_NODE_CONTEXT_HPP__

#include <unordered_map>
#include <boost/any.hpp>


namespace trunk { namespace xe {

class Context
{
public:
    void set(std::string key, boost::any value) {

    }

    template<typename T>
    T get<T>(std::string key) {
        try {
            if (__data.find(key) != __data.end())
                ;
            else
                ;
        } catch (boost::bad_any_cast& e) {

        }
    }

private:
    std::unordered_map<std::string, boost::any> __data;
};

}}


#endif // __TRUNK_XE_NODE_CONTEXT_HPP__
