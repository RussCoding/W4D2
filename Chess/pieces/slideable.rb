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
        move_list = [] 
        self.move_dirs.each do |direction|
            dx , dy = direction
            move_list += grow_unblocked_moves_in_dir(dx,dy)
        end
        move_list
    end
    
    
    private
    HORIZONTAL_DIRS = [[0,1], [0,-1], [1,0], [-1,0]]
    DIAGONAL_DIRS = [[1,1], [-1,1], [1,-1], [-1,-1]]

    def grow_unblocked_moves_in_dir(dx,dy)
        #uses pieces current position to increment by (dx,dy) until no longer valid.
         # + will need check each space before incrementing
         # + pos = current_pos
       
        not_blocked = []

        last_pos = self.position.dup #initializes it to pieces position
        while true
            
            last_pos[0] += dx
            last_pos[1] += dy
            # 0: stop loop, :1 keep going, :2 add to array and then stop
            cases = possible_move?(last_pos)
            if cases == 0 
                return not_blocked
            elsif cases == 1
                not_blocked << last_pos
            elsif cases == 2
                not_blocked << last_pos
                return not_blocked
            end
        end
    end

    def move_dirs
    end

    def possible_move?(pos)
        
        if board.valid_position?(pos)

            if board[pos].is_a?(Null_Piece)
                return 1
            elsif board[pos].color == self.color
                return 0
            else 
                return 2
            end
        end
        0
    end

end