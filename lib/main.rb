require_relative "node"
require_relative "linked_list"

list = LinkedList.new

list.append("test1")

list.append("test2")

list.append("test3")

list.append("test4")

list.prepend("head")

list.append(45)

list.append("tail")

p "list size is #{list.size}"

puts "-------------------------"

puts "list head is"
p list.head

puts "-------------------------"

puts "list tail is"
p list.tail

puts "-------------------------"

puts "node at index 3 is"
p list.at(3)

puts "-------------------------"

puts "node at index 4 is"
p list.at(4)

puts "-------------------------"

list.pop

puts "checking if the list contains the value 23 (expected false): #{list.contains?(23)}"
puts "checking if the list contains the value 45 (expected true): #{list.contains?(45)}"
puts "-------------------------"

puts "find method"
puts "checking find method. Should output '2': #{list.find("test2")}"
print "checking find method. Should output 'nil': "
p list.find(433)

puts "-------------------------"

puts list.to_s

puts "-------------------------"

list.insert_at("middle", list.size / 2)

puts list.to_s

puts "-------------------------"

list.remove_at(list.size / 2)

puts list.to_s

puts "-------------------------"
