#
# The Tree class was given in the book.  It took a String and a String array
# And you would manually construct a Tree from that, calling New for each child.
#
# This modification allows you to pass in a hash of hashes
#
class Tree
    attr_accessor :children, :node_name

    #
    # I have no idea what the RubyDoc format is
    # This thing takes a hash of hashes and constructs a tree via
    # recursively calling get_children_from
    #
    def initialize(tree_hash)
        tree_hash.each do |k, v|
            @node_name = k
            @children = get_children_from(v)
        end
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end

    # I wonder how we make private methods?  Also - why is my keyboard repeating the "o" char?
    def get_children_from(tree_hash)
        child_nodes = []
        if tree_hash != nil then 
            tree_hash.each do |k, v| 
                if v != nil then child_nodes.push(Tree.new({k => v})) end 
            end
        end
        return child_nodes
    end
end
#
# Example usage
#
ruby_tree = Tree.new( {
    'grandpa' => {'dad' => {'child 1' => {}, 'child 2'=> {}}, 
    'uncle' => {'child 3' => {}, 'child 4' => {'grand child 1' => {}}}
    }
 } 
)

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}

puts "Visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
