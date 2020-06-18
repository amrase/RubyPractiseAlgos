(1..3).each do |num1|

    (1..5).each do |num2|
        puts num1.to_s+ "-" + num2.to_s 
    end
end     

puts "----------------"

arr = ["a","b","c","d"]

arr.each_with_index do |ele1,idx1|
    arr.each_with_index do |ele2,idx2|
        if idx2 > idx1
            puts ele1 + "-" +ele2
            puts idx1.to_s + " " + idx2.to_s
            puts "--------"
        end
    end
end   

puts "----------------"

array = [
    ["a","b","c"],
    ["d","e"],
    ["f","g","h"]
]


array.each do |subArray|
    print subArray
    puts
    subArray.each do |ele|
        puts ele
    end
end    



puts "-----------"

#Write a method combinations that takes in an array of unique elements,
#the method should return a 2D array representing all possible combinations of 2 elements of the array.


def combinations(arr)
    arr.each_with_index do |ele1,idx1|
        arr.each_with_index do |ele2,idx2|
            if idx2 > idx1
                 puts "[" + ele1.to_s + "," +ele2.to_s + "]"
            end
        end
    end    
end

print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
puts "-----------"


#Write a method opposite_count that takes in an array of unique numbers. 
#The method should return the number of pairs of elements that sum to 0.

def opposite_count(nums)
    countSum = 0
    nums.each_with_index do |num1,idx1|
        nums.each_with_index do |num2,idx2|
            if num1+num2 == 0  && idx2 > idx1
                countSum+=1
            end    
        end    
    end
    return countSum;
end

puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1

puts "-----------"

def two_d_sum(arr)
    sum = 0
    arr.each do |ele1|
        ele1.each do |ele2|
            sum += ele2
        end    
    end    
    return sum
end
array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15
puts "-----------"


def two_d_translate(arr)
    one_d = []
    arr.each do |subArray|
        subArray[1].times { one_d << subArray[0]}
    end     
    return one_d
end

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts
puts "-----------"

def array_translate(array)
    str = ""

    i = 0
    while i < array.length
      ele = array[i]
      num = array[i + 1]
      num.times { str += ele }
  
      i += 2
    end
  
    return str  
end

print array_translate(["Cat", 2, "Dog", 3, "Mouse", 1]); # => "CatCatDogDogDogMouse"
puts

print array_translate(["red", 3, "blue", 1]); # => "redredredblue"
puts

puts "-----------"
puts "-----------"
puts "-----------"