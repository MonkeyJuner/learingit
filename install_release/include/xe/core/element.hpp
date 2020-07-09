#ifndef __TRUNK_XE_ELEMENT_H__
#define __TRUNK_XE_ELEMENT_H__

#include "performance.hpp"

#include <iostream>
#include <string>
#include <memory>
#include <queue>
#include <stack>
#include <vector>
#include <boost/uuid/uuid.hpp>
#include <boost/uuid/uuid_io.hpp>
#include <boost/signals2.hpp>


namespace trunk { namespace xe {

template<typename Context>
class _Element
{
public:
    _Element(std::shared_ptr<Context> ctx_q = nullptr, std::string name = "element") :
        __ctx_q(ctx_q),
        __gctx_q(nullptr),
        __name(name),
        __is_activated(true),
        __is_initialized(false) {}

    virtual ~_Element() {}

    static std::stack<std::queue<_Element<Context>* > >&  element_queue_stack() {
        return __element_queue_stack;
    }

    std::shared_ptr<Context> context_pointer() {
        return __ctx_q;
    }

    std::shared_ptr<Context> gctx_ptr() {
        return __gctx_q;
    }

    Context& context() const {
        return *context_pointer();
    }

    Context& gctx() const {
        return *gctx_ptr();
    }

    void attach(std::shared_ptr<Context>&& ctx_q) {
        __ctx_q = ctx_q;
    }

    void attach(std::shared_ptr<Context>& ctx_q) {
        __ctx_q = ctx_q;
    }

    void gattach(std::shared_ptr<Context>& gctx_q) {
        __gctx_q = gctx_q;
    }

    void detach() {
        __ctx_q = nullptr;
    }

    void gdetach() {
        __gctx_q = nullptr;
    }

    template<typename T> T& to(T& e) {
        return dynamic_cast<T&>(__to(e));
    }

    template<typename T> T& operator|(T& e) {
        return dynamic_cast<T&>(__to(e));
    }

    virtual void precompute() = 0;
    virtual void compute() = 0;
    virtual void postcompute() = 0;

    std::string name() {
        return __name;
    }

    void name(std::string v) {
        __name = v;
    }

    /** memory management
     *
     */
    size_t erase(const std::string& key) {
        return __ctx_q->erase(key);
    }

    bool is_key(const std::string& key) {
        return __ctx_q->is_key(key);
    }


    // start new set / get

    template<typename T>
    void get(const std::string& key, std::shared_ptr<T>& value_ptr) {
        __ctx_q->get<T>(key, value_ptr);
    }

    template<typename T>
    std::shared_ptr<T> get(const std::string& key) {
        return __ctx_q->get<T>(key);
    }

    template<typename T>
    void set(const std::string& key, const T& value) {
        __ctx_q->set<T>(key, value);
    }

    template<typename T>
    void set(const std::string& key, std::shared_ptr<T>& value_ptr) {
        __ctx_q->set<T>(key, value_ptr);
    }

    void nullify(const std::string& key) {
        __ctx_q->nullify(key);
    }

    bool is_nullptr(const std::string& key) {
        return __ctx_q->is_nullptr(key);
    }

    // end new set / get


    _Element<Context>& cut() {
        _Element<Context>::__is_cutted = true;

        return *this;
    }

    _Element<Context>& uncut() {
        _Element<Context>::__is_cutted = false;

        return *this;
    }

    static void reset() {
        _Element<Context>::__is_cutted = false;
    }

    _Element<Context>& activate() {
        __is_activated = true;

        __activate_signal();

        return *this;
    }

    _Element<Context>& deactivate() {
        __is_activated = false;

        __deactivate_signal();

        return *this;
    }

    virtual void init() {
        __is_initialized = true;
    }

    bool is_activated() const {
        return __is_activated;
    }

    bool is_initialized() const {
        return __is_initialized;
    }

    static bool is_cutted() {
        return __is_cutted;
    }

    boost::signals2::signal<void ()>& cut_signal() {
        return __cut_signal;
    }

    boost::signals2::signal<void ()>& uncut_signal() {
        return __uncut_signal;
    }

    boost::signals2::signal<void ()>& activate_signal() {
        return __activate_signal;
    }


    boost::signals2::signal<void ()>& deactivated_signal() {
        return __deactivate_signal;
    }

    boost::signals2::signal<void ()>& cleanup_signal() {
        return __cleanup_signal;
    }

    static void store(std::shared_ptr<_Element<Context> > e_q_) {
        ElementQueue element_queue;

        element_queue.push(e_q_.get());

        __element_queue_stack.push(element_queue);
    }

    static void store(_Element<Context>* e_q_) {
        ElementQueue element_queue;

        element_queue.push(e_q_);

        __element_queue_stack.push(element_queue);
    }

    static void cleanup() {
        if (!__element_queue_stack.empty()) {
            auto& element_queue = __element_queue_stack.top();

            while (!element_queue.empty())
            {
                auto& element = element_queue.front();

                element->cleanup_signal()();
                element->detach();
                element->gdetach();

                element_queue.pop();
            }

            __element_queue_stack.pop();
        }
    }

    void begin(_Element<Context>& element_) {
        XE_PERFORMANCE_TEST(element_.name());

        if (__ctx_q)
        {
            element_.attach(__ctx_q);
            _Element<Context>::store(&element_);

            if (!element_.is_initialized())
                element_.init();

            if (element_.is_activated())
                element_.precompute();

            if (element_.is_activated())
                element_.compute();

            if (element_.is_activated())
                element_.postcompute();

            element_.activate();
        }
    }

    void end() {
        if (__ctx_q)
            _Element<Context>::cleanup();
    }

private:
    _Element<Context>& __to(_Element<Context>& e) {
        XE_PERFORMANCE_TEST(e.name());

        if (__ctx_q) {

            auto& element_queue = __element_queue_stack.top();

            e.attach(__ctx_q);

            if (!e.is_initialized())
                e.init();

            if (e.is_activated())
                e.precompute();

            if (e.is_activated())
                e.compute();

            if (e.is_activated())
                e.postcompute();

            e.activate();

            element_queue.push(&e);
        }

        return e;
    }

private:
    boost::signals2::signal<void ()> __cut_signal;
    boost::signals2::signal<void ()> __uncut_signal;
    boost::signals2::signal<void ()> __activate_signal;
    boost::signals2::signal<void ()> __deactivate_signal;
    boost::signals2::signal<void ()> __cleanup_signal;

private:
    boost::uuids::uuid __id;
    std::string __name;

    std::shared_ptr<Context> __ctx_q;
    std::shared_ptr<Context> __gctx_q;

    bool __is_activated;

    bool __is_initialized;

    // static property members
    typedef std::queue<_Element<Context>* > ElementQueue;
    typedef std::stack<ElementQueue> ElementQueueStack;

    // static ElementQueue __element_queue;
    static std::stack<std::queue<_Element<Context>* > > __element_queue_stack;
    static bool __is_cutted;
};

// template<typename Context> std::queue<_Element<Context>* > _Element<Context>::__element_queue;
template<typename Context> std::stack<std::queue<_Element<Context>* > > _Element<Context>::__element_queue_stack;
template<typename Context> bool _Element<Context>::__is_cutted = false;

}} // namespace trunk::xe


#endif // __TRUNK_XE_ELEMENT_H__
