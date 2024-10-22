package test

import "core:fmt"
import "core:mem"
import "core:slice"
import "core:strconv"
import "core:strings"
print :: fmt.println


main :: proc() {

	assert(firstUniqChar("leetcode", context.temp_allocator) == 0)
	assert(firstUniqChar("loveleetcode", context.temp_allocator) == 2)
	assert(firstUniqChar("aabb", context.temp_allocator) == -1)
	print("all tests passed!")

	free_all(context.temp_allocator)

}

// Given a string s, find the first non-repeating character in it 
// and return its index. If it does not exist, return -1.
firstUniqChar :: proc(s: string, allocator := context.allocator) -> int {
	res := -1
	local_dict := make(map[rune]struct {}, allocator = allocator)
	defer delete(local_dict)

	for val, i in s {
		if val not_in local_dict {
			if count_rune(s, val) != 1 {
				local_dict[val] = {}
			} else {
				res = i
				break
			}
		}
	}
	return res
}
