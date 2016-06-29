# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
#   Create variable
#   split the string
# add each item to the hash with a quant of 1
#   Use .Split to create an array
#   set default quantity : 1
#   item: carrots
#   quantity: 1
#   print the list to the console [can you use one of your other methods here?]
# output: the hash

test_items = "carrots apples cereal pizza"

def create_list(items)
  items_array = items.split(' ')
  items_hash = {}
  items_array.each do |item|
    items_hash[item] = 1
  end
  items_hash
end

p create_list("carrots apples cereal pizza")
# Method to add an item to a list
# input: item name and optional quantity
# steps: add an item to the hash
# output: hash
  def add_item (list, item, qty=1)
    list[item] = qty
    list
  end

list = create_list("carrots apples cereal pizza")
new_list = add_item(list, "bread", 3)
p new_list

# Method to remove an item from the list
# input: item to be deleted
# steps: list.delete("item")
# output: hash

def remove_item(list, item)
  list.delete(item)
  list
end

p remove_item(new_list, "cereal")
new_list = remove_item(new_list, "cereal")

# Method to update the quantity of an item
# input: item to change quantity of, and then new quantity
# steps: check if item is in the list
#        list["item"] = newquantity
# output: hash

def update_quantity(list, item, qty)
    if list.include?(item)
      list[item] = qty
    else
      p "Error: Item not found"
    end
    list
end

new_list = update_quantity(new_list, "apples", 4)
p new_list

# Method to print a list and make it look pretty
# input: the hash (argument of method)
# steps: use .each to loop through hash
#        print key, value pairs.
# output: string

def print_list(list)
  list.each {|item, qty| puts "#{item}: #{qty}"}
end

p print_list(new_list)

# What did you learn about pseudocode from working on this challenge?
#   Don't overthink it, use plain english and stray away from using actual code
# What are the tradeoffs of using arrays and hashes for this challenge?
#   Hashes are good for storing information, but arrays are good for breaking up and collecting information.
# What does a method return?
#    It returns the last line of the body of the method.
# What kind of things can you pass into methods as arguments?
#    You can pass OTHER METHODS as arguments.
# How can you pass information between methods?
#    Calling one method on an argument passed from another method
# What concepts were solidified in this challenge, and what concepts are still confusing?
#    Passing of methods is more solidified, we solidified our understanding of where pseudocode is relevant in professional settings. We are still a bit confused about how blocks are used.