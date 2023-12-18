def longest_common_prefix(strs):
    if not strs:
        return ""

    # Sort the strings to ensure that the common prefix is at the beginning
    # In the context of finding the longest common prefix, sorting the list is useful
    # because it ensures that the strings with the most similar prefixes are adjacent
    # to each other. This simplifies the process of finding the common prefix by
    # comparing only the first and last strings in the sorted list.

    strs.sort()

    # Take the first and last strings after sorting
    first_str = strs[0]
    last_str = strs[-1]

    # Find the common prefix between the first and last strings
    common_prefix = ""
    for i in range(len(first_str)):
        if i < len(last_str) and first_str[i] == last_str[i]:
            common_prefix += first_str[i]
        else:
            break

    return common_prefix
         
strs = ["abab","abbaa","cbc"]
print(longest_common_prefix(strs))