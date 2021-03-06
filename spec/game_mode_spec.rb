require "game_mode"

describe GameMode do
  it "returns game mode choice given invalid input" do
    output = StringIO.new
    input = StringIO.new("hello\n8\n12\n1")
    console = Console.new(output, input)
    validator = Validator.new
    display = Display.new(console, validator)
    game_mode = GameMode.new
    expect(game_mode.choose_game_mode(display)).to eql(1)
  end
end
