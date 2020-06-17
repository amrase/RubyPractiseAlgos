puts "-----------------"
def doubler(numbers)
    doubleN = []
    i=0
    while(i<numbers.length)
        doubleN << numbers[i]*2
        i+=1;
    end
    return doubleN
end  

print doubler([1, 2, 3, 4]) # => [2, 4, 6, 8]
puts
print doubler([7, 1, 8])    # => [14, 2, 16]
puts


def yell(words)
    i=0
    new_words=[]
    while(i<words.length)
        new_words << words[i] + "!"
        i+=1;
    end
    return new_words
end    

print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]
puts
puts "-----------------"  

def element_times_index(numbers)
    new_nums = []
    i=0
    while(i<numbers.length)
        new_nums << numbers[i]*i;
        i+=1;
    end
    return new_nums
end


print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]
puts
puts "-----------------"


def even_nums(max)
    new_array=[]
    i=0
    while(i<=max)
        if i%2==0
            new_array << i 
        end
        i+=1;
    end
    return new_array;
end    

print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]
puts
puts "-----------------"


def range(min,max)
    new_array=[]
    i=min;
    while(i<=max)
        new_array << i
        i+=1;
    end
    return new_array;    
end    


print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]
puts
puts "-----------------"



def odd_range(min,max)
    new_array=[]
    i=min;
    while(i<=max)
        if i%2==1
            new_array << i 
        end 
        i+=1;    
    end
    return new_array;
end  
print odd_range(11, 18) # => [11, 13, 15, 17]
puts
print odd_range(3, 7)   # => [3, 5, 7]
puts  
puts "-----------------"


def reverse_range(min,max)
    new_array=[]
    i=max-1
    while(i>min)
        new_array << i 
        i-=1;
    end
    return new_array;
end

print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]
puts
puts "-----------------"



def first_half(array)
    new_array=[]
    i=0
    while(i<array.length/2.0)
        new_array << array[i]
        i+=1;
    end
    return new_array;
end

print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]
puts
puts "-----------------"


def factors_of(num)
    factors=[]
    i=1
    while(i<=num)
        if num%i ==0
            factors << i 
        end 
        i+=1    
    end
    return factors;     
end   

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]
puts
puts "-----------------"



def select_odds(numbers)
    oddNumbers =[]
    i=0
    while(i<numbers.length)
        if(numbers[i]%2==1)
            oddNumbers << numbers[i]
        end
        i+=1;
    end
    return oddNumbers;
end    

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []
puts
puts "-----------------"


def select_long_words(words)
    long_words=[]
    i=0
    while i < words.length
        word = words[i]
        if word.length > 4
            long_words << word
        end       
        i+=1; 
    end
    return long_words;
end

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])  
puts
puts "-----------------"




def sum_elements(arr1,arr2)
    sum_array=[]
    i=0
    while(i<arr1.length)
        sum_array << arr1[i]+ arr2[i]
        i+=1;
    end 
    return sum_array;    
end   

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) #
puts
puts "-----------------"


def fizz_buzz(max)
    fizz_buzz=[]
    i=0
    while(i<max)
        if(i%4==0 || i%6==0) && !(i%4==0 && i%6==0)
            fizz_buzz << i
        end
        i+=1;
    end
    return fizz_buzz;    
end    

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
puts
puts "-----------------"


