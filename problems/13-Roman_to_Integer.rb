# @param {String} s
# @return {Integer}
def roman_to_int(s)
    number = 0
    skip_next = false

    s.chars.each_with_index do |char, index|
        if skip_next == true
            skip_next = false
            next
        end

        if char == "I" 
            if s[index + 1] == "V"
                number = number + 4
                skip_next = true
                next 
            elsif s[index + 1] == "X"
                number = number + 9
                skip_next = true
                next 
            else
                number = number + 1
            end 
        elsif char == "V" 
            number = number + 5
        elsif char == "X"
            if s[index + 1] == "L"
                number = number + 40
                skip_next = true
                next 
            elsif s[index + 1] == "C"
                number = number + 90
                skip_next = true
                next 
            else
                number = number + 10
            end 
        elsif char == "L"
            number = number + 50
        elsif char == "C"
            if s[index + 1] == "D"
                number = number + 400
                skip_next = true
                next 
            elsif s[index + 1] == "M"
                number = number + 900
                skip_next = true
                next 
            else
                number = number + 100
            end
        elsif char == "D"
            number = number + 500
        elsif char == "M"
            number = number + 1000 
        end
    end

    return number 
end

s = "IV"
p roman_to_int(s)


###############################################
############## Better solution ################

def roman_to_int2(s)
    hash = {
        'I'=> 1,
        'V'=> 5,
        'X'=> 10,
        'L'=> 50,
        'C'=> 100,
        'D'=> 500,
        'M'=> 1000
    }

    total = 0
    i = 0

    while i < s.length
        if i + 1 < s.length && hash[s[i]] < hash[s[i+1]]
            total += hash[s[i+1]] - hash[s[i]]
            i += 2
        else
            total += hash[s[i]]
            i += 2
        end 
    end

    total
end

s = "IV"
p roman_to_int2(s)