class Piece
    def initialize(color, board, position)
        @color = color
        @board = board
        @position = position
    end
   
    def empty? 
        @board[position] == nil
    end

    def valid_moves?
        if self.empty?
        end
    end

    def position=(val)
        @board[@position] = val
    end

    def symbol
        :♔
    end

    def to_s 
        self.symbol
    end 

    def inspect
        @symbol
    end

    private

    def move_into_check?(end_pos)

    end

    attr_reader :color, :board, :position
end