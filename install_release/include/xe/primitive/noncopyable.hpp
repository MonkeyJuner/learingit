#ifndef __TRUNK_PRIMITIVE_NONCOPYABLE_HPP__
#define __TRUNK_PRIMITIVE_NONCOPYABLE_HPP__

/** \class Noncopyable
 *
 *   Noncopyable is the base class for objects that do not want to
 *   be copied. It hides its copy-constructor and its assignment-operator.
 */

namespace trunk {

class Noncopyable {
public:
    Noncopyable() = default;

    Noncopyable(Noncopyable&&) = default;
    Noncopyable& operator =(Noncopyable&&) = default;

private:
    Noncopyable(const Noncopyable&) = delete;
    Noncopyable& operator=(const Noncopyable&) = delete;
};

}

#endif // __TRUNK_PRIMITIVE_NONCOPYABLE_HPP__
