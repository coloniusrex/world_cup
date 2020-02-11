require 'minitest/autorun'
require 'minitest/pride'
require './lib/player'
require './lib/team'
class TeamTest < Minitest::Test
  def setup
    @team = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @pogba = Player.new({name: "Paul Pogba", position: "midfielder"})
  end

  def test_the_team_exists
    assert_instance_of Team, @team
  end

  def test_team_has_a_country
    assert_equal "France", @team.country
  end

  def test_team_is_created_not_eliminated
    assert_equal false, @team.eliminated?
  end

  def test_team_eliminated_can_be_changed
    @team.eliminated = true
    assert_equal true, @team.eliminated?
  end

  def test_team_begins_with_no_players
    assert_equal [], @team.players
  end

  def test_team_can_add_players
    @team.add_player(@mbappe)
    assert_equal [@mbappe], @team.players
    @team.add_player(@pogba)
    assert_equal [@mbappe, @pogba], @team.players
  end

  def test_players_by_position_method
    @team.add_player(@mbappe)
    @team.add_player(@pogba)
    assert_equal [@pogba], @team.players_by_position("midfielder")
    assert_equal [], @team.players_by_position("defender")
  end
end
