require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'

class PlayerTest < Minitest::Test
  def setup
    @player = Player.new({name: "Luka Modric", position: "midfielder"})
  end

  def test_player_exists
    assert_instance_of Player, @player
  end

  def test_player_has_a_name
    assert_equal "Luka Modric", @player.name
  end

  def test_player_has_a_position
  assert_equal "midfielder", @player.position  
  end
end
# pry(main)> require './lib/player'
# # => true
#
# pry(main)> player = Player.new({name: "Luka Modric", position: "midfielder"})
# # => #<Player:0x00007fd8273d21e0...>
#
# pry(main)> player.name
# # => "Luka Modric"
#
# pry(main)> player.position
# # => "midfielder"
