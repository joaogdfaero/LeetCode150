# @param {String} s
# @return {Integer}
def roman_to_int(s)
    number = 0

    s.chars.each_with_index do |char, index|
        if char == "I" 
            if s[index + 1] == "V"
                number = number + 4
            elsif s[index + 1] == "X"
                number = number + 9
            else
                number = number + 1
            end 
        elsif char == "V" 
            number = number + 5
        elsif char == "X"
            if s[index + 1] == "L"
                number = number + 40
            elsif s[index + 1] == "C"
                number = number + 90
            else
                number = number + 10
            end 
        elsif char == "L"
            number = number + 50
        elsif char == "C"
            if s[index + 1] == "D"
                number = number + 400
            elsif s[index + 1] == "M"
                number = number + 900
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