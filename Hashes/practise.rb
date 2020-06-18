my_hash = {
    "name" => "App Academy",
    "color" => "red",
    "age" => 5,
    "isAwsome"=>true
}

my_hash["color"] = "pink"
my_hash["age"] +=1
puts my_hash

puts "------------"
dog = {
    "name" => "Fido",
    "color" => "black",
    "age" => 3,
    "isHungry" => true,
    "enemies" => ["squirrel"]
}

dog["location"]="NY"
dog["enemies"] << "mailman"
puts dog 
puts dog.has_key?("age")
puts dog.length
puts dog.values


animals = ["dog","cat","fish","bird"]

person = ["Alvin",100,"New York","burgers",true]


better_person = {
    "name" => "Alvin",
    "age" => 100,
    "location" => "New York",
    "favoriteFood" => "burgers",
    "isHungry"=> true
}

puts better_person["location"]


better_person.each do |k,v|
    puts k 
    puts v
    puts "-----"
end    


counter = Hash.new(0)

str = "bootcamp prep"

str.each_char do |char|
    # puts char
    counter[char] +=1
    # puts counter
end 

puts counter

# print counter.sort_by {|k,v| v}
sorted = counter.sort_by {|k,v| v}
print sorted[1][0]
puts