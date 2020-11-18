require_relative "piece"
class Pawn < Piece
    def symbol
        :P
    end

    def moves # returns moves we can make
        moves_list = []
        increment = forward_dir
        

        
        if self.color == "black"

        else

        end
    end


    private

    def at_start_row? # checks if at start row, returns T/F
        pos = self.position.dup

        if forward_dir == 1 && pos[0] == 1 
            return true
        elsif forward_dir == -1 && pos[0] == 6
            return true
        end
        false
    end

    def forward_moves
    end
    
    def side_attacks
        current_pos = self.position.dup
        up = current_pos[0] + forward_dir
        left = current_pos[1] - 1
        right = current_pos[1] + 1
        left_diag = board[[up,left]]
        right_diag = board[[up,right]]
        
        attacks = []

        if !left_diag.is_a?(NullPiece) && left_diag.color != self.color
            attacks << [up,left]
        else !right_diag.is_a?(NullPiece) && right_diag.color != self.color
                attacks << [up,right]
        end
        attacks
    end

    def forward_dir # increments 
        if self.color == "black"
          return 1
        else
            return -1
        end
    end

# white on bottom of board(rows 6,7). black on top (rows, 0,1)
end