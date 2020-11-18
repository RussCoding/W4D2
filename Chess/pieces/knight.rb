require_relative "piece"
require_relative "stepable"
class Knight < Piece
    include Stepable
    def symbol
        :Kt
    end
    
    def move_diffs
        [[1,2], [1,-2], [-1,2], [-1,-2], [2,1], [-2,1], [-2,-1], [2,-1]]
    end
end