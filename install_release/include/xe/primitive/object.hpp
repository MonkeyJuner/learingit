#ifndef __TRUNK_XE_PRIMITIVE_OBJECT_HPP__
#define __TRUNK_XE_PRIMITIVE_OBJECT_HPP__

namespace trunk { namespace xe {

class Object {
public:
    Object() {
    }

    virtual bool is_null() {
        return false;
    }
};

}}


#endif // __TRUNK_XE_PRIMITIVE_OBJECT_HPP__
