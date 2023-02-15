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
      @head = Node.new(value)
    else
        @tail = Node.new(value)
        @head.next_node = @tail
    end
  end

  # Method to add a new node containing a value, to the start of thelist
  def prepend(value)
    @tail = @head
    @head = Node.new(value, @tail)
  end

  # Method to return the total number of nodes in the list
  def size
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
