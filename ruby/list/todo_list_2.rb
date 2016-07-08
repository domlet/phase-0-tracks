class TodoList

  def initialize(*args)
    @list_array = []
      args.each do |item| 
      @list_array << item
    end
  end  

  def get_items
    @list_array
  end  

  def add_item(item)
    @list_array << item
  end

  def delete_item(item)
    # item.to_i
    @list_array.delete(item)
  end

  def get_item(index)
    @list_array[index]
  end
end

# stores the list items given on initialization
dom_list = TodoList.new(1, 2)
p dom_list

# adds an item to the list
dom_list.add_item("pick up Amazon package")
p dom_list


# deletes an item
# dom_list.delete_item("1")
# dom_list.delete_at([1])
# p dom_list

# retrieves an item by index

# dom_list.get_item(1)
# dom_list.get_items
# p dom_list