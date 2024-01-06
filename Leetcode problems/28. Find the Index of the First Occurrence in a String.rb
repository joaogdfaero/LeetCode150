def str_str(haystack, needle)
    return -1 unless haystack.include?(needle)
    return 0 if haystack == needle
    return -1 if haystack.length < needle.length

    (0...haystack.length).each do |i|
        if haystack[i..(i + needle.length - 1)] == needle
          return i    
        end 
    end

    return -1
end