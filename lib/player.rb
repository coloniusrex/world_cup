class Player
  attr_reader :name, :position
def initialize(details)
  @name = details[:name]
  @position = details[:position]
end
end
