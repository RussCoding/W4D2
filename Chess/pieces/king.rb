require_relative "piece"
require_relative "stepable"
class King < Piece
    include stepable
end