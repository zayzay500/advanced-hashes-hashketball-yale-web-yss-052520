# Write your code below game_hash
require 'pry'
def game_hash
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
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
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
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player_name)
  
  player_points = nil
  
  game_hash.each do |location, team_data|
    
    team_data.each do |attribute, data|
      # binding.pry
 
      
      case attribute
      when :players
        data.each do |data_item|
          if data_item[:player_name] == player_name
            player_points = data_item[:points]
          end
        end
      end
      
    end
  end
  player_points
end


def shoe_size(player_name)
  player_shoe = nil
  
  game_hash.each do |location, team_data|
    
    team_data.each do |attribute, data|
      # binding.pry
 
      
      case attribute
      when :players
        data.each do |data_item|
          if data_item[:player_name] == player_name
            player_shoe = data_item[:shoe]
          end
        end
      end
      
    end
  end
  
  player_shoe
  
end

def team_colors(team_name)
  game_hash.each_with_object([]) do |(location, team_data), colors|
    
    if team_data[:team_name] == team_name
      team_data[:colors].each do |color|
        # binding.pry
        colors << color
      end
    end
  end
  
end

def team_names
  game_hash.each_with_object([]) do |(location, team_data), names|
    # binding.pry
    names << team_data[:team_name]
  end
end

def player_numbers(team_name)
  game_hash.each_with_object([]) do |(location, team_data), numbers|
    team_data.each do |attribute, data|
      if team_data[:team_name] == team_name
      
        case attribute
        when :players
          
          data.each do |player|
            # binding.pry
            numbers << player[:number]
          end
        end
        
      end
    end
  end
  
end

def player_stats(player_name)
  game_hash.each_with_object({}) do |(location, team_data), stats|
    # binding.pry
    team_data[:players].each do |player|
      # binding.pry
      if player[:player_name] == player_name
        player.each do |label, data|
          stats[label] = data
        end
      end
    end
  end
  
end

def big_shoe_rebounds
  biggest_shoe_size = 0
  biggest_shoe_player = ""
  
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      # binding.pry
      if player[:shoe] > biggest_shoe_size
        biggest_shoe_size = player[:shoe]
        biggest_shoe_player = player[:player_name]
      end
    end
  end
  
  rebounds = nil
  
  game_hash.each do |location, team_data|
    team_data[:players].each do |player|
      if player[:player_name] == biggest_shoe_player
        rebounds = player[:rebounds]
      end
    end
  end
  
  rebounds
end


# Write code here