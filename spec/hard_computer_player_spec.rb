require "hard_computer_player"
require "board"

describe HardComputerPlayer do

  before :each do
    grid = [0, 1, 2, 3, 4, 5, 6, 7, 8]
    board = Board.new(grid)
    @hard_computer_player = HardComputerPlayer.new(board)
  end

  context "'X' move: returns cell given grid with" do
    it "one move left" do
      grid = ["X", "O", "X", "O", "O", "X", "X", 7, "O"]
      expect(@hard_computer_player.get_best_move(grid, "X")).to eql(7)
    end

    it "three moves left" do
     grid = ["O", "X", 2, "X", "X", 5, 6, "O", "O"]
     expect(@hard_computer_player.get_best_move(grid, "X")).to eql(5)
   end

   it "five moves left" do
      grid = ["O", "X", 2, 3, 4, 5, 6, "X", "O"]
      expect(@hard_computer_player.get_best_move(grid, "X")).to eql(4)
    end

    it "five moves left - trap move" do
      grid = ["O", 1, 2, 3, "X", "O", 6, 7, "X"]
      expect(@hard_computer_player.get_best_move(grid, "X")).to eql(2).or(eq(6))
    end
  end

  context "'O' move: returns cell given grid with" do
    it "five moves left - stops opponenet from winning" do
      grid = ["X", 1, "X", 3, "O", "O", 6, 7, 8]
      expect(@hard_computer_player.get_best_move(grid, "O")).to eql(1)
    end
  end
end
