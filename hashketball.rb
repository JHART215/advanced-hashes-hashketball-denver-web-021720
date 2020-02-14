require "pry"

def game_hash
  game_hash = 
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        }, {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        }, {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        }, {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        }, {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        }, {
          player_name: "Bismak Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        }, {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        }, {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        }, {
          player_name: "Brendan Haywood",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => { 
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7 
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5,
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        },
       },
      },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks =>2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        },
      },
    }
  }
end

def num_points_scored(player_name)
  game_hash.collect do |location, team_data|
    if team_data[:players].include?(player_name)
     return team_data[:players][player_name][:points]
    end
  end
end

def shoe_size(player_name)
  game_hash.collect do |location, team_data|
    if team_data[:players].include?(player_name)
     return team_data[:players][player_name][:shoe]
    end
  end
end

def team_colors(team_name)
  if team_name == "Brooklyn Nets"
    game_hash[:home][:colors]
  else 
    game_hash[:away][:colors]
  end
end

  # SOLUTION 1 - naive
  # some_hash.each do |key, value|
  # game_hash.each do |team, team_data|
  #   team_data.each do |attr, data|
  #     if attr == :players
  #       found_player = data.find do |player|
  #         player[:player_name] == player_name
  #       end
  #
  #       if found_player
  #         return found_player[:points]
  #       end
  #     end
  #   end
  # end
def team_names
  game_hash.collect do |location, team_data|
    team_data[:team_name]
  end
end

  # SOLUTION 2 - good
  # game_hash.each do |team, team_data|
  #   team_data[:players].each do |player|
  #     if player[:player_name] == player_name
  #       return player[:points]
  #     end
  #   end
  # end
def player_numbers(team_name)
  array = []
  game_hash.collect do |location, team_data|
    if team_data[:team_name].include?(team_name)
      team_data[:players].values.collect do |player_stats|
      array << player_stats[:number]
      binding.pry
     end
    end
  end
  array
end

  # SOLUTION 3
  # get a list of all the players
  all_players = game_hash.values.collect do |team|
    team[:players]
  end.flatten
def player_stats(player_name)
  game_hash.collect do |location, team_data|
    if team_data[:players].include?(player_name)
     return team_data[:players][player_name]
    end
  end
end

  # find the player whose name matches the argument 'player_name'
  # return that player's points
  all_players.each do |player|
    return player[:points] if player[:player_name] == player_name
def big_shoe_rebounds
  largest_shoe = 0
  rebounds = 0
  game_hash.collect do |location, team_data|
    team_data[:players].collect do |key, value|
      if value[:shoe] > largest_shoe
       largest_shoe = value[:shoe]
       rebounds = value[:rebounds]
      end
    end
  end
  rebounds
end