require_relative "node"
require_relative "linked_list"

list = LinkedList.new
p list
puts "--------------------"
p list.append("test1")
p list
puts "--------------------"

p list.append("test2")
p list
puts "--------------------"

p list.append("test3")
p list
puts "--------------------"

p list.append("test4")
p list
puts "--------------------"

p list.append("test5")
p list
puts "--------------------"

p list.prepend("test6")
p list
puts "--------------------"

p list.size

# p list.head
# p list

# p list.tail
# p list

# p list.at(3)
# p list

# p list.pop
# p list

# p list.contains?(23)
# p list

# p list.contains?(45)
# p list

# p list.find(433)
# p list

# p list.to_s
# p list
