def firstUniqChar(s: str) -> int:
    """Given a string s, find the first non-repeating character 
    in it and return its index. If it does not exist, return -1."""

    res = -1
    local_dict = dict()
    for i, val in enumerate(s):
        if val not in local_dict:
            if s.count(val) != 1:
                local_dict[val] = 0
            else:
                res = i
                break

    return res


def main() -> None:
    assert (firstUniqChar("leetcode") == 0)
    assert (firstUniqChar("loveleetcode") == 2)
    assert (firstUniqChar("aabb") == -1)
    print("all tests passed!")


if __name__ == '__main__':
    main()
