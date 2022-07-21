require_relative './node'
require "pry"

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return if head.nil?

    length = 0
    node = head

    until node.nil?
      node = node.next_node
      length += 1
    end

    if length == 1
      return
    end

    head_index = 0
    tail_index = length - 1


    if length > 3
      until head_index == tail_index
      head&.next_node = tail&.prev_node
      head.next_node = head.next_node.next_node
      tail.prev_node = tail.prev_node.prev_node
      head_index += 1
      tail_index -= 1
      
      end
    else
      # binding.pry
    head = tail
    tail = head
    end
    
  end
end
