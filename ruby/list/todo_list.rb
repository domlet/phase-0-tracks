class TodoList

  def initialize(array)
    @array = array
  end

  def get_items
    @array
  end

  def add_item(list_item)
    @array << list_item
  end

  def delete_item(list_item)
    @array.delete(list_item)
  end

  def get_item(i)
    @array[i]
  end
  
end

array = TodoList.new("hi")
p array
array.delete("hi")
p array
# array.push("bye")
# p array
array.class

test = []
test.push(1, 2)
p test
test.delete_at(1)
p test

testarray = [ 1, 2, [ 3, 4, [ 5, 6, 7 ] ] ]
p testarray
testarray[2][2].delete_at(1)
p testarray