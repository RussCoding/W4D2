module Slideable
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        
    end
    
    
    private
    HORIZONTAL_DIRS = [[0,1], [0,-1], [1,0], [-1,0]]
    DIAGONAL_DIRS = [[1,1], [-1,1], [1,-1], [-1,-1]]

    def grow_unblocked_moves_in_dir(dx,dy)
    end

    def move_dirs
    end
end