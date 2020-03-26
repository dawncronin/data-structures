class Node 
    attr_accessor :next, :val

    def initialize(val)
        @val = val
        @next = nil
    end
end

class List

    def initialize(head)
        @head = head
    end

    def insert(node)
        node.next = @head
        @head = node
    end

    def deleteBeg()
        @head = @head.next
    end

    def delete(node)
        prev_node = nil
        cur_node = @head

        while cur_node do
            if cur_node == node
                prev_node.next = cur_node.next
                return @head
            end
            prev_node = cur_node
            cur_node = cur_node.next
        end
    end

    def length()
        l = 0
        cur_node = @head
        while cur_node do
            l += 1
            cur_node = cur_node.next
        end
        return l
    end

    def search(val)
        cur_node = @head
        while cur_node do
            if cur_node.val == val
                return cur_node
            else
                cur_node = cur_node.next
            end
        end
        return nil
    end

    def reverse()
        cur_node = @head
        prev_node = nil
        next_node = @head.next
        while cur_node do
            if !cur_node.next 
                @head = cur_node
            end
            next_node = cur_node.next
            cur_node.next = prev_node
            prev_node = cur_node
            cur_node = next_node
        end

        return @head
   
    end

end

a = Node.new(1)
b = Node.new(2)
c = Node.new(3)
d = Node.new(4)
e = Node.new(5)
f = Node.new(18)
a.next = b 
b.next = c 
c.next = d 
d.next = e

list = List.new(a)

 p list.reverse()