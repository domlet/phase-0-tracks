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