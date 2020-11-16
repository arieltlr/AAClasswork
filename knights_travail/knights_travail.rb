require_relative ../skeleton/lib PolyTreeNode

class KnightPathFinder

    def initialize(pos)
        @board = Array.new(8){Array.new(8,PolyTreeNode.new())} # poly tree
        self.root_node = @board(pos)

        @kpf = KnightPathFinder.new(pos)
        build_move_tree(self.root_node)
    end

    def [](pos)
        x,y = pos
        @board[x][y]
    end

    def []=(pos,val)
        x,y = pos
        @board[x][y] = val
    end

end


