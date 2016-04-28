# Method to create a list
def list_maker
  
  # input: string of items separated by spaces (example: "carrots apples cereal pizza")
  puts "What do you need to buy?"
  list_items = gets.chomp
  
  # steps:
  list_items_array = list_items.split(" ")
  list_items_hash = {}
  
  list_items_array.each do |item|
     # set default quantity
    list_items_hash[item] = 1
  end 
  
  # print the list to the console [can you use one of your other methods here?]
  p list_items_hash
  
end
# output: hash




list = list_maker




# Method to add an item to a list
def list_addition(list)
  
  # input: item name and optional quantity
  # steps:
  puts "How many items do you want to add?"
  item_quantity = gets.chomp.to_i
  puts "What item do you want to add?"
  list_addition_item = gets.chomp
  puts "How many? (Press 'ENTER' to default to 1)"
  list_addition_quantity = gets.chomp.to_i
    if list_addition_quantity == 0
      list_addition_quantity = 1
    end
    
  list[list_addition_item] = list_addition_quantity
  
  (item_quantity - 1).times do
    puts "What's the next item?"
    list_addition_item = gets.chomp
    puts "How many? (Press 'ENTER' to default to 1)"
    list_addition_quantity = gets.chomp.to_i
      if list_addition_quantity == 0
        list_addition_quantity = 1
      end
  list[list_addition_item] = list_addition_quantity
  end
end  
# output: updated hash



# Method to remove an item from the list
def list_removal(list)
  
  # input:
  puts "What item would you like to remove?"
  list_removal_item = gets.chomp
  
  # steps:
  list.delete_if { |key, value| key == list_removal_item}
end  
# output: updated hash



# Method to update the quantity of an item
def quantity_updator(list)

  # input:
  puts "What item's quantity do you want to update?"
  list_item = gets.chomp
  puts "What would you like to update it to? (Press 'ENTER' to default to 1)"
  list_item_quantity = gets.chomp.to_i
    if list_item_quantity == 0
      list_item_quantity = 1
    end
  
  # steps:
  list[list_item] = list_item_quantity
  p list
  
end
# output: updated hash

# Method to print a list and make it look pretty
def pretty_list(list)
  
  # input: the list hash, entered as a parameter already
  # steps:
  puts "Here is the final, updated list:"
  list.each do |item, quantity|
    puts "#{item}: #{quantity}"
  end

end  
# output: pretty list
  
# Driver code

list_addition(list)
p list

list = list_removal(list)
p list

list = quantity_updator(list)

list = pretty_list(list)