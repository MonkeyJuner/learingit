#ifndef __TRUNK_XE_CORE_PERFORMANCE_HPP__
#define __TRUNK_XE_CORE_PERFORMANCE_HPP__

#include <chrono>
#include <iostream>
#include <string>


namespace trunk  { namespace xe {

class Performance {
public:
    Performance(const std::string name = "Tested Object Name") :
        __name(name),
        __now(std::chrono::high_resolution_clock::now()) {}

    ~Performance() {
        auto duration = std::chrono::duration_cast<std::chrono::microseconds>(
            std::chrono::high_resolution_clock::now() - __now);

        std::cout << "### Time taken by <" << __name << "> : "
                  << duration.count() << " microseconds ###" << std::endl;
        std::cout.flush();
    }

private:
    const std::chrono::high_resolution_clock::time_point __now;
    const std::string __name;
};

#ifdef ENABLE_XE_PERFORMANCE_TEST
#    define XE_PERFORMANCE_TEST(name) Performance p(name)
#else
#    define XE_PERFORMANCE_TEST(name) //No-op
#endif

}}


#endif // __TRUNK_XE_CORE_PERFORMANCE_HPP__
