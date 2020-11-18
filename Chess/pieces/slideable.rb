module Slideable
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        #iterates through result of move_dirs
        # grow_unblocked_moves on each move.
        #return array of moves
    end
    
    
    private
    HORIZONTAL_DIRS = [[0,1], [0,-1], [1,0], [-1,0]]
    DIAGONAL_DIRS = [[1,1], [-1,1], [1,-1], [-1,-1]]

    def grow_unblocked_moves_in_dir(dx,dy)

        #uses pieces current position to increment by (dx,dy) until no longer valid.
         # + will need check each space before incrementing
         # + pos = current_pos
         #
    end

    def move_dirs
    end

    def possible_move?

    end

end