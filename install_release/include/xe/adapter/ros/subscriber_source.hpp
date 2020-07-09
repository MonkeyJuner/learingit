#ifndef __TRUNK_XE_SUBSCRIBER_SOURCE_H__
#define __TRUNK_XE_SUBSCRIBER_SOURCE_H__

#include "../../core/source.hpp"

#include <string>
#include <unordered_map>
#include <vector>
#include <boost/bind.hpp>
#include <boost/any.hpp>
#include <ros/node_handle.h>
#include <ros/subscriber.h>
#include <ros/time.h>



namespace trunk { namespace xe {

template<typename Context>
class _SubscriberSource : public _Source<Context>
{
public:
    _SubscriberSource(std::shared_ptr<Context>& ctx_q) :
        _Source<Context>(ctx_q) {}

    _SubscriberSource() {}

    template<typename T>
    void callback(const boost::shared_ptr<T const >& msg, const std::string& topic) {
        /*
        (*Element<Context>::context_pointer())[topic] = *msg;
        (*Element<Context>::context_pointer())[topic + "~time"] = ros::Time::now();
        */
        __context_cache[topic] = *msg;
        __context_cache[topic + "~time"] = ros::Time::now();
    }

    // TODO: just work with ros msg type, need add check function
    template<typename T>
    void take(const std::string& topic) {
        __topics.push_back(topic);

        __context_cache[topic + "~time"] = ros::Time(0);
        // (*Element<Context>::context_pointer())[topic + "~time"] = ros::Time(0);

        __subs[topic] = __nh.subscribe<T>(topic,
                                          1,
                                          boost::bind(&_SubscriberSource<Context>::callback<T>,
                                                      this,
                                                      _1,
                                                      topic));
    }

    virtual void compute() override {
        for (auto topic: __topics)
        {
            (*_Element<Context>::context_pointer())[topic] = __context_cache[topic];
            (*_Element<Context>::context_pointer())[topic + "~time"] = __context_cache[topic + "~time"];
        }
    }

protected:
    ros::NodeHandle __nh;
    std::vector<std::string> __topics;
    std::unordered_map<std::string, ros::Subscriber> __subs;

    Context __context_cache;
};

}} // namespace trunk::xe


#endif // __TRUNK_XE_SUBSCRIBER_SOURCE_H__
