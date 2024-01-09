# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    return [0, 1] if nums.length == 2 && nums.sum == target
    missing_value = 0

    nums.each_with_index do |num, index|
        # calcula o valor que falta para completar o target
        missing_value = target - num
        # vê se esse valor existe em nums
        found_match = nums.index(missing_value)
        # se existir, retorna a posição dele e a posição do número atual
        return [found_match, index] if found_match && found_match != index
    end
end