#ifndef __TRUNK_XSM_STATE_NODE_HPP__
#define __TRUNK_XSM_STATE_NODE_HPP__

#include <xn/node.hpp>
#include <boost/signals2.hpp>


namespace trunk { namespace xsm {

typedef int StateType;

class StateNode : public xn::Node<StateType>
{
public:
    StateNode(StateType);
    virtual ~StateNode();

    StateType state() const;

    boost::signals2::signal<void ()>& entry();
    boost::signals2::signal<void ()>& exit();

private:
    boost::signals2::signal<void ()> __entry;
    boost::signals2::signal<void ()> __exit;
};

}}


#endif // __TRUNK_XSM_STATE_NODE_HPP__
