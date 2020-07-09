#ifndef __TRUNK_XE_PIPELINE_CONTEXT_H__
#define __TRUNK_XE_PIPELINE_CONTEXT_H__

#include <iostream>
#include <memory>
#include <unordered_map>
#include <cassert>
#include <boost/any.hpp>


namespace trunk { namespace xe {

class Context
{
public:
    typedef std::string Key;
    typedef boost::any Value;

public:
    Context () : __id(__count++) {}

    template<typename T>
    void deepcopy(const Key& key,
                  std::shared_ptr<T> to) {
        std::shared_ptr<T> from = get<T>(key);

        if (from)
            *to = *from;
        else
            to = nullptr;
    }

    boost::any& operator[](const Key& key) {
        return __data[key];
    }

    size_t erase(const Key& key) {
        return __data.erase(key);
    }

    bool is_key(const Key& key) {
        return __data.find(key) != __data.end();
    }

    bool is_nullptr(const Key& key) {
        bool flag = true;

        if (is_key(key)) {
            try {
                nullptr_t p = boost::any_cast<nullptr_t>(__data[key]);
            } catch(const boost::bad_any_cast& e) {
                /*
                std::cerr << e.what() << " | "
                          << "Other type try to cast to nullptr_t."
                          << std::endl;
                */
                flag = false;
            }
        }

        return flag;
    }

    template<typename T>
    void get(const Key& key, std::shared_ptr<T>& value_ptr) {
        if (is_nullptr(key))
            value_ptr = nullptr;
        else {
            try {
                value_ptr = boost::any_cast<std::shared_ptr<T> >(__data[key]);
            } catch (const boost::bad_any_cast& e) {
                std::cerr << e.what() << " | "
                          << "get " << typeid(T).name() << " failed" << std::endl;
            }
        }
    }

    template<typename T>
    std::shared_ptr<T> get(const Key& key) {
        std::shared_ptr<T> value_ptr;
        get<T>(key, value_ptr);

        return value_ptr;
    }

    template<typename T>
    void set(const Key& key, const T& value) {
        if (is_nullptr(key)) {
            auto p = std::make_shared<T>();
            *p = value;
            __data[key] = p;
        } else {
            std::shared_ptr<T> value_ptr = boost::any_cast<std::shared_ptr<T> >(__data[key]);
            *value_ptr = value;
        }
    }

    template<typename T>
    void set(const Key& key, std::shared_ptr<T>& value_ptr) {
        if (is_nullptr(key)) {
            if (!value_ptr)
                value_ptr = std::make_shared<T>();
            __data[key] = value_ptr;
        } else {
            if (!value_ptr)
                get(key, value_ptr);
            else
                __data[key] = value_ptr;
        }
    }

    void nullify(const Key& key) {
        __data[key] = nullptr;
    }

    const std::unordered_map<Key, Value>& data() const {
        return __data;
    }

    void clear() {
        __data.clear();
    }

private:
    uint64_t __id;
    std::unordered_map<Key, Value> __data;

    static uint64_t __count;
};

typedef std::shared_ptr<Context> ContextPtr;
typedef std::shared_ptr<const Context> ConstContextPtr;
typedef Context Input;
typedef ContextPtr InputPtr;
typedef Context Output;
typedef ContextPtr OutputPtr;

}} // namespace trunk::xe


#endif // __TRUNK_XE_PIPELINE_CONTEXT_H__
