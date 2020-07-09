#ifndef __TRUNK_PRIMITIVE_ONCE_HPP__
#define __TRUNK_PRIMITIVE_ONCE_HPP__

#include <atomic>
#include <utility>
#include "include/core/SkTypes.h"

// Once provides call-once guarantees for xe, much like std::once_flag/std::call_once().
//
// There should be no particularly error-prone gotcha use cases when using Once.
// It works correctly as a class member, a local, a global, a function-scoped static, whatever.

class Once {
public:
    constexpr Once() = default;

    template <typename Fn, typename... Args>
    void operator()(Fn&& fn, Args&&... args) {
        auto state = fState.load(std::memory_order_acquire);

        if (state == Done) {
            return;
        }

        // If it looks like no one has started calling fn(), try to claim that job.
        if (state == NotStarted && fState.compare_exchange_strong(state, Claimed,
                                                                  std::memory_order_relaxed,
                                                                  std::memory_order_relaxed)) {
            // Great!  We'll run fn() then notify the other threads by releasing Done into fState.
            fn(std::forward<Args>(args)...);
            return fState.store(Done, std::memory_order_release);
        }

        // Some other thread is calling fn().
        // We'll just spin here acquiring until it releases Done into fState.
        while (fState.load(std::memory_order_acquire) != Done) { /*spin*/ }
    }

private:
    enum State : uint8_t { NotStarted, Claimed, Done};
    std::atomic<uint8_t> fState{NotStarted};
};

#endif  // __TRUNK_PRIMITIVE_ONCE_HPP__
