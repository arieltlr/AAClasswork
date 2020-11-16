require_relative "../skeleton/lib/00_tree_node.rb"
require "byebug"

class KnightPathFinder
    attr_reader :root_node, :board

    def initialize(pos)
        @pos = pos
        @board = Array.new(8){Array.new(8)} # poly tree
        @root_node = PolyTreeNode.new(pos)
        self.build_move_tree
    end

    def [](pos)
        x,y = pos
        @board[x][y]
    end

    def []=(pos,val)
        x,y = pos
        @board[x][y] = val
    end

    def build_move_tree
    end

    def find_path

    end

    self.valid_moves(pos)
        row, col = pos
    
       valids = [[row + 2, col - 1], [row + 2, col + 1], [row - 1, col + 2], [row - 1, col -2]        
        [row - 2, col + 1], [row - 2, col - 1], [row + 1, col - 2],[row + 1, col + 2]]

    end



         # # valid_moves = []
        # # (1..2).each do |row|
        # #     2.down_to(1).each do |col|
        # #         valid_moves << [row,col]

        #     end 
        # end
        
        # if (@root_node.value[0] + 2 == row || @root_node.value[0] - 2 == row) && (@root_node.value[1] + 1 == col || @root_node.value[1] - 1 == col)
        #     return row, col
            
        # elsif (@root_node.value[1] + 2 == row || @root_node.value[1] - 2 == row) && (@root_node.value[0] + 1 == col || @root_node.value[0] - 1 == col)
            
        #     return true
        # else
        #     return false
        # end   
    

end


