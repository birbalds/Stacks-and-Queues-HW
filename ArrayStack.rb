class ArrayStack
    attr_reader :size, :array_stack

    def initialize(size)
        @size = size
        @array_stack = []
    end

    def empty
        if @array_stack.empty?
            true
        else
            false
        end
    end

    def size
        @array_stack.length
    end

    def top
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
