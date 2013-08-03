class BinarySearchTree
	def initialize(root = nil)
		@root = root if root
	end
	def add(node)
		if @root.nil?
			@root = node
		else
			@root.attach(node)
		end
		self
	end
	def path_to(val)
		if val.is_a?(Node)
			val = val.val
		end
		path = []
		current = @root
		while current && current.val != val
			path << current
			if val < current.val
				current = current.left
			else
				current = current.right
			end
		end
		if current
			return path
		else
			return nil
		end
	end
	def to_s
		@root.to_s
	end
end

class Node
	attr_accessor :parent, :left, :right, :val
	def initialize(val)
		@val = val
	end
	def attach(node)
		if @left.nil? && node.val <= @val
			@left = node
		elsif @right.nil? && node.val >= @val
			@right = node
		elsif node.val <= @val
			@left.attach(node)
		else
			@right.attach(node)
		end
	end
	def to_s
		"(#{@left}/#{@val}\\#{@right})"
	end
end

tree = BinarySearchTree.new
tree.add(Node.new 30).add(Node.new 8).add(Node.new 52).add(Node.new 3).add(Node.new 20).add(Node.new 10).add(Node.new 29)

File.open(ARGV[0]).each_line do |line|
	a, b = line.strip.split.map(&:to_i)
	path_a = tree.path_to(a).map(&:val)
	path_b = tree.path_to(b).map(&:val)
	puts (path_a & path_b).last
end
