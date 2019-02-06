def hello_t(array)

# if....else conditionals allows for an option of No Block Given and a "graceful failure" 
  if block_given?
# Counter variable 
    i = 0
  
    while i < array.length
# Yield each successive value stored in the array to the passed-in block.
# "Here, we use the bracket ([]) method to grab the value of each successive index element as we proceed through our while loop, yielding each to a block."
      yield array[i]
      i = i + 1
    end
# Return the original array!
    array
  else
    puts "Hey! No block was given!"
  end
end

# Part One: Method Call
# hello_t(["Tim", "Tom", "Jim"]) do |name|
#   if name.start_with?("T")
#     puts "Hi, #{name}"
#   end
# end

