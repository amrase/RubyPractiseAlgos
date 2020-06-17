def fizz_bizz(max)
   arr=[]
   (1...max).each do |num|
      if (num%3==0 || num%5==0) && !(num%3==0 && num%5==0)
         arr << num 
      end   
   end 
   return arr;  
end   

puts fizz_bizz(20)

puts "---------------"

#Write a method to_initials that takes in a person's name string and returns a string representing their initials.

def to_initials(name)
   nameParts = name.split(" ")
   initials = " "
   nameParts.each do |part|
      initials += part[0]
   end
   return initials;
end   

puts to_initials("Kelvin Bridges")      # => "KB"
puts to_initials("Michaela Yamamoto")   # => "MY"
puts to_initials("Mary La Grange")      # => "MLG"
puts "---------------"



#Write a method first_in_array that takes in an array and two elements, the method should return the element that appears earlier in the array.
def first_in_array(arr, el1, el2)
   if arr.index(el1) < arr.index(el2)
      return el1
   else 
      return el2
   end      
end   

puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
puts "---------------"


#Write a method abbreviate_sentence that takes in a sentence string and returns a 
#new sentence where every word longer than 4 characters has all of it's vowels removed.

def abbreviate_sentence(sent)
   words = sent.split(" ")
   new_words = []
 
   words.each do |word|
     if word.length > 4
       new_word = abbreviate_word(word)
       new_words << new_word
     else
       new_words << word
     end
   end
 
   return new_words.join(" ")
 end
 
 def abbreviate_word(word)
   vowels = "aeiou"
   new_word = ""
 
   word.each_char do |char|
     if !vowels.include?(char)
       new_word += char
     end
   end
 
   return new_word
end   



puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")   
puts "---------------"



def format_name(str)
   parts = str.split(" ")
   new_parts = []
   parts.each do |part|
      new_parts << part[0].upcase + part[1..-1].downcase
   end
   return new_parts.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") #
puts "---------------"


#Write a method is_valid_name that takes in a string and returns a boolean indicating whether or not it is a valid name.
def is_valid_name(str)
   parts = str.split(" ")
   if parts.length <2
      return false;
   end
   parts.each do |word|
      if word[0] == word[0].upcase && word[1..-1]==word[1..-1].downcase
         return true
      else
         return false
      end      
   end    
end   


puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false
puts "---------------"

#Write a method is_valid_email that takes in a string and returns a 
#boolean indicating whether or not it is a valid email address.

def is_valid_email(str)
   parts = str.split("@")
   if parts.length < 2
      return false;
   end
   first = parts[0]
   second = parts[1]   
   check = "abcdefghijklmnopqrstuvwxyz"
   first.each_char do |char|
      if !check.include?(char)
         return false;
      end   
   end   

   if second.split(".").length == 2
      return true
   else 
      return false;
   end      
  
end   


puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
puts "---------------"



#Write a method reverse_words that takes in a sentence string and 
#returns the sentence with the order of the characters in each word reversed. 
#Note that we need to reverse the order of characters in the words, do not reverse the order of words in the sentence.
def reverse_words(sent)
   words = sent.split(" ")
   new_words = []
   words.each do |word|
      new_words << word.reverse
   end  
   return new_words.join(" ")
end

puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') 
puts "---------------"


#Write a method rotate_array that takes in an array and a number. 
#The method should return the array after rotating the elements the specified number of times.
# A single rotation takes the last element of the array and moves it to the front.



def rotate_array(arr, num)
   num.times do 
      ele = arr.pop 
      arr.unshif(ele)
   end
   return arr   
end

print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts
print rotate_array([ "a", "b", "c", "d" ], 2)
puts "---------------"