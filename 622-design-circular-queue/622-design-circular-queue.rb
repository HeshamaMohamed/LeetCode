class MyCircularQueue

    def initialize(k)
        @size = k
        @queue = Array.new(@size)
        @head = @tail = nil
    end

    def en_queue(value)
        if is_empty
          @head = @tail = 0
          @queue[@tail] = value
        elsif is_full
          return false
        else
          @tail = (@tail + 1) % @size
          @queue[@tail] = value
        end
        true
    end

    def de_queue()
        return false if is_empty
        
        @queue[@head] = nil
        if @head == @tail
            @head = @tail = nil
        else
            @head = (@head + 1) % @size
        end
        true
    end

    def front()
        @head ? (@queue[@head] ? @queue[@head] : -1 ) : -1
    end

    def rear()
       @tail ? (@queue[@tail] ? @queue[@tail] : -1 ) : -1
    end

    def is_empty()
        @head.nil? && @tail.nil?
    end

    def is_full()
        return false if is_empty
        (@tail - @head == @size - 1) || (@tail - @head == -1)
    end
end

# Your MyCircularQueue object will be instantiated and called as such:
# obj = MyCircularQueue.new(k)
# param_1 = obj.en_queue(value)
# param_2 = obj.de_queue()
# param_3 = obj.front()
# param_4 = obj.rear()
# param_5 = obj.is_empty()
# param_6 = obj.is_full()