require_relative "node"

# Class that represents the full linked list
class LinkedList
  attr_accessor :head, :tail

  # Instance initialization method
  def initialize
    @head = nil
    @tail = nil
  end

  # Method to add a new node containing a value, to the end of the list
  def append(value)
    # If the head is empty, prepend the first node of the linked list
    if @head.nil?
      @head = prepend(value)
    else
      # If it is not empty, traverse the chain until there is a "next_node" spot that is empty, i.e ready to be filled
      tmp = @head
      until tmp.next_node.nil?
        tmp = tmp.next_node
      end

      # Fill the last empty spot with a new node for the desired value
      tmp.next_node = Node.new(value)
      # The new tail is equal to the last element of the list
      @tail = tmp.next_node
    end
  end

  # Method to add a new node containing a value, to the start of thelist
  def prepend(value)
    # If there is no elements in the list, insert the first one
    if @head.nil?
      @head = Node.new(value, @tail)
    else
      # And if there are already elements present, the new head becomes a new node with the old head as it's next node
      @head = Node.new(value, @head)
    end
  end

  # Method to return the total number of nodes in the list
  def size
    # Set counter and starting element
    count = 0
    current = @head

    # Until the last element, add 1 to the counter
    until current.nil?
      current = current.next_node
      count += 1
    end
    # At this point, the count is equal to the size of the linked list
    count
  end

  # Method to return a node at a given index
  def at(index)
    tmp = @head

    # Traverse the list up until the element at the index that we want to inspect
    index.times do
      tmp = tmp.next_node
    end
    tmp
  end

  # Method to remove the last element from the list
  def pop
    # Set the penultimate 'next_node' to be nil, thus removing the last element form the list
    at(size - 2).next_node = nil

    # As the tail wasn't changed with the last line, manually setting the new last element to be the tail of the list
    @tail = at(size - 1)
  end

  # Method that returns true if the passed value is in the list, otherwise returns false
  def contains?(value, intention = "contain")
    # To avoid creating more lines of unnecessary code, create a flag called 'intention' with a default value of 'contain'
    res = false
    count = 1
    tmp = @head
    until tmp.next_node.nil?
      # If the value is equal to the pretended value, the res flag is set to true, meaning the value exists and we can break the loop
      if tmp.next_node.value == value
        res = true
        break
      end

      tmp = tmp.next_node
      count += 1
    end

    # When this function is called normally, it just returns the boolean value, as to say if the list does or doesn't have the pretended value
    if intention == "contain"
      res
    elsif intention == "index"
      # But when the intention is 'index', meaning the user used the 'find' method, it returns the count aka the index of where that value is
      count
    end
  end

  # Method that returns the index of the node containing value, or nil if not found
  def find(value)
    # If the value is in the list, retrieve its index, else return nil
    if contains?(value)
      contains?(value, "index")
    end
  end

  # Method to represent the list object as strings in a '( value ) -> ( value ) -> ( value ) -> nil' format
  def to_s
    # Create initial empty string
    to_print = ""
    # Using a loop that goes on for the whole array size, using the at method defined earlier, retrieve the values of each node and add them to the string
    size.times do |i|
      to_print += "(#{at(i).value}) -> "
    end
    to_print += "nil"
  end

  # Extra credit part
  # Method to insert a node at a given index, as long as value and index are provided
  def insert_at(value, index)
    # At the index previous to the one we want to insert a value, change the next node to be of the value we want, with its next node itself being the current node at the index where we want to insert the value
    at(index - 1).next_node = Node.new(value, at(index))
  end

  # Method to remove a node at the given index
  def remove_at(index)
    # At the index previous to the one we want to remove the value, change the next node to be the node after the current (the one we want to remove), with its next node itself being the node 2 indexes after. This last part is to prevent the complete cut off of the list
    at(index - 1).next_node = Node.new(at(index + 1).value, at(index + 2))
  end
end
