  # fun way to get multiple items in at initialization
  # def initialize(*args)
  #   @list_array = []
  #     args.each do |item| 
  #     @list_array << item
  #   end
  # end  

class TodoList
  def initialize(list_array)
    @list_array = list_array
  end  

  def get_items
    @list_array
  end  

  def add_item(item)
    @list_array << item
  end

  def delete_item(item)
    @list_array.delete(item)
  end

  def get_item(index)
    @list_array[index]
  end
end

  # it "stores the list items given on initialization" do
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn"]

dom_list = TodoList.new(["do the dishes", "mow the lawn"])
p dom_list.get_items

  # it "adds an item to the list" do
  #   list.add_item("mop")
  #   expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]

dom_list.add_item("mop")
p dom_list.get_items

  # it "deletes an item" do
  #   list.delete_item("do the dishes")
  #   expect(list.get_items).to eq ["mow the lawn"]

dom_list.delete_item("do the dishes")
p dom_list.get_items

  # it "retrieves an item by index" do
  #   expect(list.get_item(0)).to eq "do the dishes"

p dom_list.get_item(0)