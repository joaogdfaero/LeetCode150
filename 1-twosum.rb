class Leetcode150
    def two_sum(nums, target)
        hash = {}

        nums.each_with_index do |number, index|
            if hash[target - number]
                return [hash[target - number], index]
            else
                hash[number] = index
            end 
        end     
    end
end

nums = [3,3] 
target = 6

test = Leetcode150.new
p test.two_sum(nums, target)