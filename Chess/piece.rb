class Piece
    def initialize(color, board, position)
        @color = color
        @board = board
        @position = position
    end

   
    def empty? 

    end

    def valid_moves?

    end

    def position=(val)

    end

    def symbol

    end



    def to_s 

    end 

    def inspect
        @color
    end

    private

    def move_into_check?(end_pos)

    end

    attr_reader :color, :board, :position
end