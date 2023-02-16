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
    if @head.nil?
      @head = prepend(value)
    else
      tmp = @head
      until tmp.next_node.nil?
        tmp = tmp.next_node
        break
      end
      tmp.next_node = Node.new(value)
      @tail = tmp.next_node
    end
  end

  # Method to add a new node containing a value, to the start of thelist
  def prepend(value)
    @head = Node.new(value, @tail)
    @tail = @head
  end

  # Method to return the total number of nodes in the list
  def size
    node_check = ""
    count = 0
    node_check = head.next_node
    until node_check.nil?
      node_check = node_check.next_node
      count += 1
    end
    count
  end

  # Method to return a node at a given index
  def at(index)
  end

  # Method to remove the last element from the list
  def pop
  end

  # Method that returns true if the passed value is in the list, otherwise returns false
  def contains?(value)
  end

  # Method that returns the index of the node containing value, or nil if not found
  def find(value)
  end

  # Method to represent the list object as strings in a '( value ) -> ( value ) -> ( value ) -> nil' format
  def to_s
  end

  # Extra credit part
  # Method to insert a node at a given index, as long as value and index are provided
  def insert_at(value, index)
  end

  # Method to remove a node at the given index
  def remove_at(index)
  end
end
