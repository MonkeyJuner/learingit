#ifndef __TRUNK_PRIMITIVE_VECTOR_HPP__
#define __TRUNK_PRIMITIVE_VECTOR_HPP__

#include <cstdint>
#include <stdexcept>
#include <vector>
#include <initializer_list>

namespace trunk {

template<typename T>
class Vector {
public:
    Vector<T>(std::uint64_t length) {
        __length = length;
        __data = std::vector<T>(__length);
    }

    Vector<T>(std::initializer_list<T> l) {
        std::vector<T> data(l);

        if(data.size() == 0)
            throw std::invalid_argument("Size of array must be greater than 0.");

        __length = data.size();
        __data = data;
    }

    Vector<T>() {
        __length = 0;
    }

    std::uint64_t length() const {
        return __length;
    }

    T& operator[](std::uint64_t i) {
        return __data[i];
    }

    Vector<T> multiply(const T& value) const {
        Vector<T> result(__data);
        for (auto i = 0; i < __length; ++i)
                result[i] *= value;

        return result;
    }

    Vector<T> divide(const T& value) const {
        Vector<T> result(__data);
        for (auto i = 0; i < __length; ++i)
                result[i] /= value;

        return result;
    }

    Vector<T> add(const Vector<T>& m) const {
        if (__length != m.length())
            throw std::invalid_argument("Vector length must be the same.");

        Vector<T> result(__length);
        for (auto i = 0; i < __length; ++i)
            result[i] = (*this)[i] + m[i];

        return result;
    }

    Vector<T> subtract(const Vector<T>& m) const {
        if (__length != m.length())
            throw std::invalid_argument("Vector length must be the same.");

        Vector<T> result(__length);
        for (auto i = 0; i < __length; ++i)
            result[i] = (*this)[i] - m[i];

        return result;
    }

    T dot(const Vector<T>& m) const {
        if (__length != m.length())
            throw std::invalid_argument("Dot product not compatible.");

        T result;
        for (auto i = 0; i < __length; ++i)
            result += (*this)[i] * m[i];

        return result;
    }

    bool operator==(const Vector& m) const {
        if (__length == m.length()) {
            for (auto i = 0; i < __length; ++i)
                if((*this)[i] != m[i])
                    return false;
            return true;
        }

        return false;
    }

    bool operator!=(const Vector& m) const {
        return !operator==(m);
    }

    Vector<T> operator*=(const T& m) const {
        return multiply(m);
    }

    Vector<T> operator/=(const T& m) const {
        return divide(m);
    }

    Vector<T> operator+=(const Vector& m) const {
        return add(m);
    }

    Vector<T> operator-=(const Vector& m) const {
        return subtract(m);
    }

private:
    std::vector<T> __data;
    std::uint64_t __length;
};


template<typename T> Vector<T> operator*(const T &b, const Vector<T>& a) {
    return a.multiply(b);
}

template<typename T> Vector<T> operator/(const Vector<T>& a, const T &b) {
    return a.divide(b);
}

template<typename T> Vector<T> operator+(const Vector<T>& a, const Vector<T>& b) {
    return a.add(b);
}

template<typename T> Vector<T> operator-(const Vector<T>& a, const Vector<T>& b) {
    return a.subtract(b);
}

/** \class Vector2
 *
 */
template<typename T>
class Vector2 : public Vector<T>
{
public:
    Vector2<T>(std::initializer_list<T> list_) :
        Vector<T>(list_),
        x((*this)[0]),
        y((*this)[1]) {

        /*
          if (data.size() != 2)
          throw std::invalid_argument("Size of array must be 2.");
        */
    }

public:
    T& x;
    T& y;
};

/** \class Vector3
 *
 */
template<typename T>
class Vector3 : public Vector2<T>
{
public:
    Vector3<T>(std::initializer_list<T> list_) :
        Vector2<T>(list_),
        z((*this)[2]) {
        /*
          if (data.size() != 2)
          throw std::invalid_argument("Size of array must be 2.");
        */
    }

public:
    T& z;
};

}


#endif // __TRUNK_PRIMITIVE_VECTOR_HPP__
