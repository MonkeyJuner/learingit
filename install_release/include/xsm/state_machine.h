#ifndef __TRUNK_XSM_STATE_MACHINE_H__
#define __TRUNK_XSM_STATE_MACHINE_H__

#include "state_node.h"

#include <xn/graph.hpp>
#include <boost/any.hpp>
#include <boost/signals2.hpp>
#include <vector>
#include <unordered_map>
#include <functional>


namespace trunk { namespace xsm {

typedef int StateType;


class StateMachine
{
public:
    struct _Transition
    {
        _Transition(StateType s,
                    std::string n,
                    StateType f,
                    std::function<void ()> a = nullptr) {
            start_status = s;
            name = n;
            final_status = f;
            action = a;
        }

        StateType start_status;
        StateType final_status;
        std::string name;
        std::function<void ()> action;
    };

    typedef struct _Transition Transition;
    typedef std::vector<Transition> TransitionTable;
    typedef std::unordered_map<std::string, boost::signals2::signal<void ()> > Actions;

public:
    StateMachine(const TransitionTable&, size_t);
    virtual ~StateMachine();

    boost::signals2::signal<void ()>& action(const std::string&);
    StateNode* state_node(StateType);

    void initial(StateType);
    const StateType state() const;

private:
    // StateNode *__current_state_node;
    // StateNode *__prev_state_node;
    StateType __state;

    xn::Graph<StateType, int, int, StateNode>* __state_chart;
    Actions __actions;
};

}}

#endif // __TRUNK_XSM_STATE_MACHINE_H__
