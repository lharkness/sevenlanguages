# define a hash
test_hash = {}
test_hash["first"] = 1
test_hash["second"] = 2

# Define an array
test_array = []
test_array[0] = "first"
test_array[1] = "second"

puts test_array

# convert array to hash - we could use each if it gave us access to the index
array_hash = {}
for index in 0..test_array.length - 1
    array_hash[index] = test_array[index] 
end

array_hash = {}
# which it totally does
test_array.each_with_index { |e, i| array_hash[i + 1] = e }

puts array_hash

# I've no idea how to translate a hash into an array unless the hash has integer keys 
# well, I suppose we could hash the non-integer key and use that as a key... ick

array_hash.each { |k, v| puts v }

sixteenNumbers = (1..16).to_a

index = 0
sixteenNumbers.each do |e|
    if (index % 4 == 0 ) then puts end
    print "#{e} \t"
    index += 1
end
puts

# I don't know what "p" does here...
sixteenNumbers.each_slice(4) { |s| p s }

sixteenNumbers.each_slice(4) do |s| 
    s.each { |e| print "#{e} \t" } 
    puts 
end


