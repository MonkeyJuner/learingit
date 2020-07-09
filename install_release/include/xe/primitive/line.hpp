#ifndef __TRUNK_PRIMITIVE_LINE_HPP__
#define __TRUNK_PRIMITIVE_LINE_HPP__

#include "point.hpp"


namespace trunk {

class Line
{
    using EndPoint = Point;

public:
    Line(EndPoint ep1_, EndPoint ep2_) :
        __ep1(ep1_),
        __ep2(ep2_) {}

private:
    EndPoint __ep1;
    EndPoint __ep2;
};

}


#endif // __TRUNK_PRIMITIVE_LINE_HPP__
