#ifndef __TRUNK_PRIMITIVE_MATRIX_HPP__
#define __TRUNK_PRIMITIVE_MATRIX_HPP__

#include <ostream>
#include <sstream>
#include <vector>
#include <stdexcept>
#include <cstdint>


namespace trunk {

template<typename T>
class Matrix {
public:
    Matrix<T>(std::uint64_t height, std::uint64_t width) {
        __height = height;
        __width = width;
        __array = std::vector<std::vector<T> >(height, std::vector<T>(width));
    }

    Matrix<T>(std::vector<std::vector<T> > const& array) {
        if(array.size() == 0)
            throw std::invalid_argument("Size of array must be greater than 0.");

        __height = array.size();
        __width = array[0].size();
        __array = array;
    }

    Matrix<T>() {
        __height = 0;
        __width = 0;
    }

    std::uint64_t height() const {
        return __height;
    }

    std::uint64_t width() const {
        return __width;
    }

    std::vector<T>& operator[](int row) {
        return __array[row];
    }

    const T& operator()(int& w, int& h) const {
        return __array[w][h];
    }

    Matrix<T> multiply(const T& value) const {
        Matrix<T> result(__array);
        for (auto i = 0; i < __height; ++i)
            for (auto j = 0; j < __width; ++j)
                result[i][j] *= value;

        return result;
    }

    Matrix<T> divide(const T& value) const {
        Matrix<T> result(__array);
        for (auto i = 0; i < __height ; ++i)
            for (auto j = 0; j < __width; ++j)
                result[i][j] /= value;

        return result;
    }

    Matrix<T> add(const Matrix<T>& m) const {
        if (!(__height == m.height() && __width == m.width()))
            throw std::invalid_argument("Matrix dimension must be the same.");

        Matrix<T> result(__height, __width);
        for (auto i = 0; i < __height; ++i)
            for (auto j = 0; j < __width; ++j)
                result[i][j] = (*this)(i, j) + m(i, j);

        return result;
    }

    Matrix<T> subtract(const Matrix<T>& m) const {
        if (!(__height == m.height() && __width == m.width()))
            throw std::invalid_argument("Matrix dimension must be the same.");

        Matrix<T> result(__height, __width);
        for (auto i = 0; i < __height; ++i)
            for (auto j = 0; j < __width ; ++j)
                result[i][j] = (*this)(i, j) - m(i, j);
        return result;
    }

    Matrix<T> multiply(const Matrix<T>& m) const {
        if (!(__height == m.height() && __width == m.width()))
            throw std::invalid_argument("Matrix dimension must be the same.");

        Matrix<T> result(__height, __width);
        for (auto i = 0; i < __height; ++i)
            for (auto j = 0; j < __width; ++j)
                result[i][j] = (*this)(i, j) * m(i, j);

        return result;
    }

    Matrix<T> dot(const Matrix<T>& m) const {
        if (!(__width == m.height()))
            throw std::invalid_argument("Dot product not compatible.");

        T w_ = 0;
        int mwidth_ = m.width();

        Matrix<T> result(__height, mwidth_);
        for (auto i = 0; i < __height; ++i)
            for (auto j = 0; j < mwidth_; ++j) {
                for (auto h = 0; h < __width; ++h)
                    w_ += (*this)(i, h) * m(h, j);
                result[i][j] = w_;
                w_ = 0;
            }

        return result;
    }

    Matrix<T> transpose() const {
        Matrix<T> result(__width, __height);

        for (auto i = 0; i < __width; ++i)
            for (auto j = 0; j < __height; ++j)
                result[i][j] = (*this)(j, i);

        return result;
    }

    bool operator==(const Matrix& m) const {
        if (__height == m.height() && __width == m.width()) {
            for (auto i = 0; i < __height; ++i) {
                for (auto j = 0; j < __width; ++j)
                    if((*this)(i, j) != m(i, j))
                        return false;
            }

            return true;
        }

        return false;
    }

    bool operator!=(const Matrix& m) const {
        return !operator==(m);
    }

    Matrix<T> operator*=(const T& m) const {
        return multiply(m);
    }

    Matrix<T> operator/=(const T& m) const {
        return divide(m);
    }

    Matrix<T> operator+=(const Matrix& m) const {
        return add(m);
    }

    Matrix<T> operator-=(const Matrix& m) const {
        return subtract(m);
    }

    Matrix<T> operator*=(const Matrix& m) const {
        return multiply(m);
    }

    void print(std::ostream& os) const {
        int maxLength[__width] = {};
        std::stringstream ss;

        for (auto i = 0; i < __height; i++)
            for (auto j = 0 ; j < __width ; j++) {
                ss << __array[i][j];
                if(maxLength[j] < ss.str().size()){
                    maxLength[j] = ss.str().size();
                }
                ss.str(std::string());
            }

        for (auto i = 0 ; i < __height; i++) {
            for (auto j = 0; j < __width; j++) {
                os << __array[i][j];
                ss << __array[i][j];
                for (auto k = 0; k < maxLength[j] - ss.str().size() + 1; k++)
                    os << " ";
                ss.str(std::string());
            }
            os << std::endl;
        }
    }

public:
    std::vector<std::vector<T> > __array;
    std::uint64_t __height;
    std::uint64_t __width;
};

template <class T> Matrix<T> operator*(const T &b, const Matrix<T>& a) {
    return a.multiply(b);
}

template <class T> Matrix<T> operator/(const Matrix<T>& a, const T &b) {
    return a.divide(b);
}

template <class T> Matrix<T> operator+(const Matrix<T>& a, const Matrix<T>& b) {
    return a.add(b);
}

template <class T> Matrix<T> operator-(const Matrix<T>& a, const Matrix<T>& b) {
    return a.subtract(b);
}

template <class T> Matrix<T> operator*(const Matrix<T>& a, const Matrix<T>& b) {
    return a.multiply(b);
}

template <class T> std::ostream& operator<<(std::ostream &os, const Matrix<T>& m) {
    m.print(os);
    return os;
}

} // namespace trunk


#endif // __TRUNK_PRIMITIVE_MATRIX_HPP__
