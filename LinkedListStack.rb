class Node
    attr_reader :data # allow external entities to read value but not write
    attr_accessor :next # allow external entities to read or write next node

    def initialize(value)
        @data = value
        @next = nil
    end
end

class LinkedListStack
    def initialize
        @head = nil
    end

    def empty
        @head.nil?
    end

    def top
        node = @head

        node = node.next until node.next.nil?

        node
    end

    def max
        node = @head
        largest_node = @head
        until node.nil?
            largest_node = node if node.data > largest_node.data
            node = node.next
        end

        largest_node.data
    end

    def min
        node = @head
        smallest_node = @head
        until node.nil?
            smallest_node = node if node.data < smallest_node.data
            node = node.next
        end

        smallest_node.data
    end

    def size
        counter = 0
        node = @head

        until node.nil?
            counter += 1
            node = node.next
        end

        counter
    end
end
