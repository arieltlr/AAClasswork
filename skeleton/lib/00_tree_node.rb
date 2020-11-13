require "byebug"

class PolyTreeNode

    attr_reader :value, :parent, :children
    
    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(node)
        if @parent != nil
            self_index = @parent.children.index(self)
            @parent.children.delete_at(self_index) 
                
            if node == nil
                @parent = nil
            else
                @parent = node
                if !node.children.include?(self)
                    node.children << self
                end
            end
        else
            @parent = node
            if !node.children.include?(self)
                node.children << self
            end
        end
    end

    def add_child(node)
        node.parent = self
        if !@children.include?(node)
            @children << node
        end
    end

    def remove_child(node)
        node.parent = nil
        if !@children.include?(node)
            raise "you don't look like us"
        else
            node_index = @children.index(node)
            @children.delete_at(node_index) 
        end
    end

    def dfs(target)
        #base case
        return self if self.value == target 
            
        @children.each do |child|
        search = child.dfs(target)
        return search unless search.nil?
        end
         nil
    end

    def bfs(target)
        # debugger
        queue = [self]
        
        until queue.empty?
        # debugger
            ele = queue.shift # what ever is front of line
            # debugger
            if ele.value == target
            # debugger
                return ele
            else
                # debugger
                queue += ele.children
                # debugger
            end
        end
        nil

    end
end