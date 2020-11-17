require_relative "piece"
require_relative "slideable"
class Rook < Piece
    include slideable
end