#ifndef __TRUNK_XE_PRIMITIVE_NULL_OBJECT_HPP
#define __TRUNK_XE_PRIMITIVE_NULL_OBJECT_HPP

#include "object.hpp"


namespace trunk { namespace xe {

class NullObject final : public Object {
public:
    NullObject() {
    }

    virtual bool is_null() final {
        return true;
    }
};

}}


#endif // __TRUNK_XE_PRIMITIVE_NULL_OBJECT_HPP
