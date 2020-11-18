require_relative "./pieces/piece"
require_relative "./pieces/queen"
require_relative "./pieces/null_piece"

class Board

    attr_reader :board
    
    def initialize
        @board = Array.new(8) {Array.new(8)}
        self.populate
        #@null_piece
    end


    def [](pos)
        row, col = pos
        @board[row][col]
    end

    def []=(pos,val) 
        row,col = pos 
        @board[row][col] = val
    end

    def populate
        
        # self[[3,3]] = Queen.new(:red, self, [3,3])
       
        #@boardPiece.new("red", self, [0,0] )
         #@board[0].each_with_index {|square, idx| Piece.new(:Red, self, [0,idx])}
        # null = Null_Piece.instace(self, [2,idx])
        @board[2].each_with_index {|ele, idx| self[[2,idx]] = Null_Piece.instance(self, [2,idx])  }
        @board[3].each_with_index {|ele, idx| self[[3,idx]] = Null_Piece.instance(self, [3,idx])  }
        @board[4].each_with_index {|ele, idx| self[[4,idx]] = Null_Piece.instance(self, [4,idx])  }
        @board[5].each_with_index {|ele, idx| self[[5,idx]] = Null_Piece.instance(self, [5,idx])  }

        #  @board[1].map! {|square| Queen.new(:red, self, self)}
        # @board[6].map! {|square| Piece.new(:Red, self, [3,3])}
        # @board[7].map! {|square| Piece.new(:Red, self, [3,3])}
        # self = Queen.new(:Red, self, [3,3])
    end

    def move_piece(color, start_pos, end_pos)
        if self[start_pos].is_a?(Piece) && valid_position?(end_pos)
            self[end_pos] = self[start_pos]
            self[start_pos] = nil
        else
            raise "You can't make that move"
        end

    end

    def valid_position?(pos)
        row, col = pos
        return true if row.between?(0,7) && col.between?(0,7) 
        false
    end
    
    def add_piece (piece, pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end
end
