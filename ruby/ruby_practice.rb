array1 = [1, 2, 3, 4, 5]
array2 = ["a", "b", "c", "d", "e"]

# i want to create {1=>"a", 2=>"b" ... ]
# i want to use each or map

hash = {}

array1.each do |number|
  
  array2.each do |letter|
    hash[number] = letter
  end
  
end

puts hash

# # # 

# calculations = ['aa', 'bb', 'cc']
# p calculations

# calculations.each do |i|
#   p "#{calculations}"[i]
# end