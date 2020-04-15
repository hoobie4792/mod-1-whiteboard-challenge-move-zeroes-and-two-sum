require 'pry'

def move_zeroes(nums)
  length = nums.length
  zeroes = nums.delete(0)
  (length - nums.length).times do
    nums << 0
  end
  nums
end

puts move_zeroes([0, 1, 0, 3, 12])

def two_sum(numbers, target)
  numbers.each_with_index do |num1, i1|
    numbers.each_with_index do |num2, i2|
      if i1 != i2
        if num1 + num2 == target
          return {index1: i1, index2: i2}
        end
      end
    end
  end
  return nil
end

puts two_sum([2, 7, 11, 15], 9)