require './lib/player'
require './lib/team'

class WorldCup
  attr_reader :year, :teams
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    active_players = []
    active_teams = @teams.select { |team| team.eliminated? == false}

    active_teams.select do |team|
      active_players.concat(team.players_by_position(position))
    end
    active_players
  end

  def all_players_by_position
      players_by_position = {}
      @teams.map do |players_by_position, team|
        
      end
  end
end
