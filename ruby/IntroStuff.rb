# puts throws a new line on the end. print doesn't
# I suspect printf works like it does in C
puts "Hello, World"
print "Hello, Ruby".index("Ruby").to_s << "\n"

# If you don't need access to the index, this works
10.times {puts "Lee Harkness"}

# It turns out if you do need access to the index, you can do this
10.times {|i| puts "#{i + 1} Lee Harkness"}

# This is a while, followed by the equivalent for
i = 1
while i <= 10 
    puts("This is sentence number %d." % [i]) 
    i += 1
end

for index in 1..10
    printf("This is sentence number %d.\n", index)
end




