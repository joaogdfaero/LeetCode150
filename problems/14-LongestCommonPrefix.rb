# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    common_prefixes = []
    prefix = ''

    if strs.length == 1
        return strs[0]
    else    
        strs.each_with_index do |str, index|
            prefix = str[0..index]
            if strs[strs.length - index] && strs[strs.length - index].include?(prefix)
                common_prefixes << prefix 
            else
                common_prefixes = []
            end 

            # tem que levar em conta arrays de tamanhos diferentes
      #      if strs[index+1] or strs[index+2] && strs[index+1].include?(str[index..(index+1)]) && strs[index+2].include?(str[index..(index+1)])
       #         common_prefixes << str[index..(index+1)] 
      #      end
        end
    end

    if common_prefixes.empty?
        ""
    else
        common_prefixes.max_by { |str| str.length }
    end 
end

strs =["ab", "a"]
p longest_common_prefix(strs) 