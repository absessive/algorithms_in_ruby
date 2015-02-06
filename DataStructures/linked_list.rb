class Node
	attr_accessor :value, :next

	def initialize(value)
		@value = value
		@next = nil
	end	

end

class LinkedList	
	attr_accessor :head, :count, :last
	def initialize(node)
		@count = 1
		@head = node
		@last = node unless @last
	end		

	def push(node)
		if count == 1
			@head.next = node
			@count += 1			
			@last = node
		else
			current_last = @last
			@last.next = node
			@last = node
		end
	end

	def pop
		if @count == 1
			current = @head
			@head = 0
			current
		else
			current = @head.next
			while (current.next != nil)	
				current = current.next
			end
			current		
		end
	end		
end

a = Node.new "a"	
b = Node.new "b"	
c = Node.new "c"	
d = Node.new "d"	
e = Node.new "e"

l = LinkedList.new a

l.push b
l.push c
l.push d
l.push e
puts l.inspect
puts l.pop.inspect


