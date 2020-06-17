def count_e(word)
    countE = 0
    i=0
    while(i<word.length)
        if(word[i]=='e')
            countE+=1;
        end    
        i+=1;
    end
    return countE;
end  

puts count_e("movie") # => 1
puts count_e("excellent") # => 3
puts '------------------'


def count_a(word)
    countA=0;
    i=0
    while(i<word.length)
        if(word[i]=='a' || word[i]=='A')
            countA+=1;
        end 
        i+=1;    
    end
    return countA;    
end   

puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")  
puts '------------------'



def count_vowels(word)
    countV = 0
    i=0
    while(i<word.length)
        if(word[i]=='a' || word[i]=='e' || word[i]=='i' || word[i]=='o' || word[i]=='u')
            countV+=1;
        end   
        i+=1;
    end
    return countV    
end


puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2
puts '------------------'


def sum_nums(max)
    i=0
    sum=0
    while(i<=max)
        sum += i 
        i+=1;
    end 
    return sum    
end


puts sum_nums(4) # => 10, because 1 + 2 + 3 + 4 = 10
puts sum_nums(5) # => 15
puts '------------------'


def factorial(num)
    fact=1;
    if(num<=1)
        fact =1;
    else 
        fact = num * factorial(num-1)
    end
    return fact;        
end

puts factorial(3) # => 6, because 1 * 2 * 3 = 6
puts factorial(5) # => 120, because 1 * 2 * 3 * 4 * 5 = 120
puts '------------------'


# def reverse(word)
#     return word.reverse
# end

def reverse(word)
    reverse = "" 
    i =0
    while(i<word.length)
        char = word[i]
        reverse = char+reverse;
        i+=1;
    end
    return reverse    
end   


puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"
puts '------------------'

def is_palindrome(word)
    return word == word.reverse
end

puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false
puts '------------------'

