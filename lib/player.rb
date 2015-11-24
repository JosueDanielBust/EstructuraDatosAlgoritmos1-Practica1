class Player
  attr_reader :name, :sym, :tokens
  def initialize(name, sym, tokens)
    @name = name
    @sym = sym
    @tokens = tokens
  end
end
