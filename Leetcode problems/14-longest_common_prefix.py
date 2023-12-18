def longest_common_prefix(strs):
    if len(strs) == 1:
        return strs[0]
    
    strs.sort()

    first_str = strs[0]
    second_str = strs[1]
    common_prefix = ""
    all_match = True 

    for i in range(len(first_str)):
        if first_str[i] == second_str[i]:
            common_prefix += first_str[i]
        else:
            break

    if len(strs) > 2:
        for i in range(2, len(strs)):
            if not strs[i].startswith(common_prefix):
                all_match = False

    if not all_match:
        return ""
    else:
        return common_prefix
        
        
    # loop em cada elemento do array
    # vê o que há em comum entre o primeiro e segundo
    # vê se os outros objetos do array possuem isso (caso eles existam)
    # retorna esse prefixo 


strs = ["flower","flow","flight"]
print(longest_common_prefix(strs))