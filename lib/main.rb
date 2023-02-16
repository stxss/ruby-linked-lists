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

p list.find("test2")
p list.find(433)

# p list.to_s
# p list
