def remove_duplicates(nums)
    return 0 if nums.empty?

    # Initialize a pointer to track the position of the last unique element
    unique_ptr = 0

    # Iterate through the array starting from the second element
    (1...nums.length).each do |i|
        # If the current element is different from the last unique element
        if nums[i] != nums[unique_ptr]
            # Move the unique pointer to the next position
            unique_ptr += 1
            # Update the last unique element at the new position
            nums[unique_ptr] = nums[i]
        end
    end

    # The unique elements are now in the first (unique_ptr + 1) positions
    return unique_ptr + 1
end
