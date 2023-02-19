require_relative "node"

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    if @head.nil?
      @head = prepend(value)
    else
      tmp = @head
      until tmp.next_node.nil?
        tmp = tmp.next_node
      end

      tmp.next_node = Node.new(value)
      @tail = tmp.next_node
    end
  end

  def prepend(value)
    if @head.nil?
      @head = Node.new(value, @tail)
    else
      @head = Node.new(value, @head)
    end
  end

  def size
    count = 0
    current = @head

    until current.nil?
      current = current.next_node
      count += 1
    end
    count
  end

  def at(index)
    tmp = @head

    index.times do
      tmp = tmp.next_node
    end
    tmp
  end

  def pop
    at(size - 2).next_node = nil
    @tail = at(size - 1)
  end

  def contains?(value, intention = "contain")
    # To avoid creating more lines of unnecessary code, create a flag called 'intention' with a default value of 'contain'
    res = false
    count = 1
    tmp = @head
    until tmp.next_node.nil?
      if tmp.next_node.value == value
        res = true
        break
      end

      tmp = tmp.next_node
      count += 1
    end

    if intention == "contain"
      res
    elsif intention == "index"
      count
    end
  end

  def find(value)
    if contains?(value)
      contains?(value, "index")
    end
  end

  def to_s
    to_print = ""
    size.times do |i|
      to_print += "(#{at(i).value}) -> "
    end
    to_print += "nil"
  end

  # Extra credit part
  def insert_at(value, index)
    at(index - 1).next_node = Node.new(value, at(index))
  end

  def remove_at(index)
    at(index - 1).next_node = Node.new(at(index + 1).value, at(index + 2))
  end
end
