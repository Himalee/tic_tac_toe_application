class Display

  def initialize(console = Console.new)
    @console = console
  end

  def present_board(grid)
    @console.present(" #{grid[0]} | #{grid[1]} | #{grid[2]} \n===+===+===\n #{grid[3]} | #{grid[4]} | #{grid[5]} \n===+===+===\n #{grid[6]} | #{grid[7]} | #{grid[8]} \n")
  end
end