#Problem 1: You have array of integers. Write a recursive solution to find
#the sum of the integers.

def sum_recur(array)
  sum = 0
  if array.empty?
    0
  else
    sum = array.first
    sum += sum_recur(array.drop(1))
    sum
  end
end

#Problem 2: You have array of integers. Write a recursive solution to
#determine whether or not the array contains a specific value.

def includes?(array, target)
  if array.empty?
    false
  elsif array.first == target
    true
  else
    includes?(array.drop(1),target)
  end
end


#Problem 3: You have an unsorted array of integers. Write a recursive
#solution to count the number of occurrences of a specific value.

def num_occur(array, target)
  count = 0
  if array.empty?
    0
  else
    count = 1 if array.first == target
    count += num_occur(array.drop(1), target)
    count
  end
end


#Problem 4: You have array of integers. Write a recursive solution to
#determine whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  if array.length < 2
    false
  elsif array[0] + array[1] == 12
    true
  else
    add_to_twelve?(array.drop(1))
  end

end


#Problem 5: You have array of integers. Write a recursive solution to
#determine if the array is sorted.

def sorted?(array)
  if array.length <= 1
    true
  elsif array[0] > array[1]
    false
  else
    sorted?(array.drop(1))
  end
end


#Problem 6: Write the code to give the value of a number after it is
#reversed. Must use recursion. (Don't use any #reverse methods!)

def reverse(number)
  digits = number.to_s.chars
  reversed = []
  if digits.length <= 1
    number
  else
    reversed << digits.pop
    reversed << reverse(digits.join.to_i)
    reversed.join.to_i
  end
end
