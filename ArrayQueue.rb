class ArrayQueue
    attr_reader :size, :array_stack

    def initialize(size)
        @size = size
        @array_stack = []
    end

    def empty
        @array_stack.empty?
    end

    def size
        @array_stack.length
    end

    def front
        return if @array_stack.empty?

        @array_stack[0]
    end

    def min
        @array_stack.min
    end

    def max
        @array_stack.max
    end
end
