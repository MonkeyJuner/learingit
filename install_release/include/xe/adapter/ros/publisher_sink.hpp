#ifndef __TRUNK_XE_PUBLISHER_SINK_H__
#define __TRUNK_XE_PUBLISHER_SINK_H__

#include "../../core/sink.hpp"

#include <string>
#include <unordered_map>
#include <vector>
#include <ros/node_handle.h>
#include <ros/publisher.h>


namespace trunk { namespace xe {

template<typename Context>
class _PublisherSink : public _Sink<Context>
{
public:
    _PublisherSink() {}

    template<typename T>
    void on(const std::string topic) {
        __topics.push_back(topic);
        __pubs[typeid(T).name()] = __nh.advertise<T>(topic, 1);
    }

    template<typename T>
    void send(T& msg) {
        __pubs[typeid(T).name()].publish(msg);
    }

private:
    ros::NodeHandle __nh;
    std::vector<std::string> __topics;
    std::unordered_map<std::string, ros::Publisher> __pubs;
};

}} // namespace trunk::xe


#endif // __TRUNK_XE_PUBLISHER_SINK_H__
