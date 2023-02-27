#ifndef ADAM_TEMPLATE_LIBRARY
#define ADAM_TEMPLATE_LIBRARY

#include <algorithm>
#include <iostream>
#include <vector>

namespace atl {
//
//
// TODO:
// 1) generalize the container: vector, set, map, linkedlist, etc
// 2) use iterators instead of int
//
template <typename T> //
void printV(std::vector<T> &nums) {
  if (nums.size() < 1)
    std::cout << "passed vector is empty" << std::endl;
  std::cout << "elements: ";
  for (int i = 0; i < nums.size() - 1; ++i) {
    std::cout << nums[i] << ", ";
  }
  std::cout << nums[nums.size() - 1] << std::endl; // last element
}

// TODO:
// 1) generalize the container: vector, set, linkedlist, etc
// 2) accept a compare function object (=> support desc and asc)
//
template <typename T> //
void sortV(std::vector<T> &v) {
  std::sort(begin(v), end(v));
}

//
//
} // namespace atl
#endif
