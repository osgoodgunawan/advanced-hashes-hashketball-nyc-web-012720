  def game_hash
  hash={
  :home  => {:team_name => "Brooklyn Nets",
            :colors => ["Black","White"],
            :players => [{
                            :player_name => "Alan Anderson",
                            :number => 0 ,
                            :shoe => 16 ,
                            :points =>22 ,
                            :rebounds =>12 ,
                            :assists => 12 ,
                            :steals => 3 ,
                            :blocks => 1 ,
                            :slam_dunks =>1
                          },
                          {
                            :player_name => "Reggie Evans",
                            :number => 30 ,
                            :shoe => 14 ,
                            :points =>12 ,
                            :rebounds =>12 ,
                            :assists => 12 ,
                            :steals => 12 ,
                            :blocks => 12 ,
                            :slam_dunks =>7
                          }, 
                          {
                            :player_name => "Brook Lopez",
                            :number => 11 ,
                            :shoe => 17 ,
                            :points => 17 ,
                            :rebounds =>19 ,
                            :assists => 10 ,
                            :steals => 3 ,
                            :blocks => 1 ,
                            :slam_dunks =>15
                          },
                          {
                            :player_name => "Mason Plumlee",
                            :number => 1 ,
                            :shoe => 19 ,
                            :points =>26 ,
                            :rebounds =>11 ,
                            :assists => 6 ,
                            :steals => 3 ,
                            :blocks => 8 ,
                            :slam_dunks =>5
                          },
                          {
                            :player_name => "Jason Terry",
                            :number => 31 ,
                            :shoe => 15 ,
                            :points =>19 ,
                            :rebounds => 2 ,
                            :assists => 2 ,
                            :steals => 4 ,
                            :blocks => 11 ,
                            :slam_dunks =>1
                          }]
              }, 
  
  :away => {:team_name =>"Charlotte Hornets",
            :colors => ["Turquoise", "Purple"] ,
            :players => [{
                          :player_name => "Jeff Adrien",
                          :number => 4 ,
                          :shoe => 18 ,
                          :points =>10 ,
                          :rebounds => 1 ,
                          :assists => 1 ,
                          :steals => 2 ,
                          :blocks => 7 ,
                          :slam_dunks =>2
                        }, 
                        {
                          :player_name => "Bismack Biyombo",
                          :number => 0 ,
                          :shoe => 16 ,
                          :points =>12 ,
                          :rebounds => 4 ,
                          :assists => 7 ,
                          :steals => 22 ,
                          :blocks => 15 ,
                          :slam_dunks =>10
                        },
                        {
                          :player_name => "DeSagna Diop",
                          :number => 2 ,
                          :shoe => 14 ,
                          :points =>24 ,
                          :rebounds => 12 ,
                          :assists => 12 ,
                          :steals => 4 ,
                          :blocks => 5 ,
                          :slam_dunks =>5
                        },
                        {
                          :player_name => "Ben Gordon",
                          :number => 8 ,
                          :shoe => 15 ,
                          :points =>33 ,
                          :rebounds => 3 ,
                          :assists => 2 ,
                          :steals => 1 ,
                          :blocks => 1 ,
                          :slam_dunks =>0
                          
                        },
                        {
                          :player_name => "Kemba Walker",
                          :number => 33 ,
                          :shoe => 15 ,
                          :points =>6 ,
                          :rebounds => 12 ,
                          :assists => 12 ,
                          :steals => 7 ,
                          :blocks => 5 ,
                          :slam_dunks =>12
                        }]
      }
  }
  hash
end


def num_points_scored(player_name)
  new_hash=game_hash
  counter =0
  total_players=new_hash[:home][:players].length
  
while counter<total_players do 
  if new_hash[:away][:players][counter][:player_name]==player_name
    return  new_hash[:away][:players][counter][:points]
  end
    
 if new_hash[:home][:players][counter][:player_name]==player_name
    return new_hash[:home][:players][counter][:points]
    end
 counter +=1
 end

end

def shoe_size(player_name)
  hash=game_hash
  counter = 0 
  total_players= hash[:home][:players].length
  
  while counter<total_players do 
    if hash[:away][:players][counter][:player_name]==player_name
     return hash[:away][:players][counter][:shoe]
    end 
    if hash[:home][:players][counter][:player_name]==player_name
      return hash[:home][:players][counter][:shoe]
    end
   counter+=1
  end
end

def team_colors(team_name)
  hash=game_hash
  if hash[:home][:team_name]==team_name
    return hash[:home][:colors]
  end
  
  if hash[:away][:team_name]==team_name
    return hash[:away][:colors]
  end
end


def team_names()
  hash=game_hash
  team_name_nets=hash[:home][:team_name]
  team_name_hornets=hash[:away][:team_name]
  
  array=[]
  
  array.push(team_name_nets)
  array.push(team_name_hornets)
  
  array
end

def player_numbers(team_name)
  hash=game_hash
  counter =0
  array=[]
  total_players=hash[:home][:players].size
  while counter < total_players
    if hash[:home][:team_name]==team_name
      array << hash[:home][:players][counter][:number]
   end
   if hash[:away][:team_name]==team_name
     array.push(hash[:away][:players][counter][:number])
  end
  counter +=1
end
array
end

def player_stats(player_name)
  final_hash={}
  hash=game_hash
  counter=0
  total_players=hash[:home][:players].length
  while counter <total_players do 
   if hash[:home][:players][counter][:player_name]==player_name
     final_hash[:number]=hash[:home][:players][counter][:number]
     final_hash[:shoe]=hash[:home][:players][counter][:shoe]
     final_hash[:points]=hash[:home][:players][counter][:points]
     final_hash[:rebounds]=hash[:home][:players][counter][:rebounds]
     final_hash[:assists]=hash[:home][:players][counter][:assists]
     final_hash[:steals]=hash[:home][:players][counter][:steals]
     final_hash[:blocks]=hash[:home][:players][counter][:blocks]
     final_hash[:slam_dunks]=hash[:home][:players][counter][:slam_dunks]
  end
   
   if hash[:away][:players][counter][:player_name]==player_name
     final_hash[:number]=hash[:away][:players][counter][:number]
     final_hash[:shoe]=hash[:away][:players][counter][:shoe]
     final_hash[:points]=hash[:away][:players][counter][:points]
     final_hash[:rebounds]=hash[:away][:players][counter][:rebounds]
     final_hash[:assists]=hash[:away][:players][counter][:assists]
     final_hash[:steals]=hash[:away][:players][counter][:steals]
     final_hash[:blocks]=hash[:away][:players][counter][:blocks]
     final_hash[:slam_dunks]=hash[:away][:players][counter][:slam_dunks]
  end
  counter +=1
  end
  final_hash
end

def big_shoe_rebounds 
  hash=game_hash
  max =0
  total_players=hash[:home][:players].length
  counter =0
  num_rebound=0
  while counter<total_players do 
    if hash[:home][:players][counter][:shoe] > max
      max = hash[:home][:players][counter][:shoe]
      num_rebound=hash[:home][:players][counter][:rebounds]
    end
     if hash[:away][:players][counter][:shoe] > max
       max= hash[:away][:players][counter][:shoe]
       num_rebound=hash[:away][:players][counter][:rebounds]
    end
    counter +=1
end
num_rebound
end

def most_points_scored
  hash=game_hash
  total_players=hash[:home][:players].length
  counter =0
  max_point=0
  max_point_name=""
  
  while counter <total_players do 
    if hash[:home][:players][counter][:points]> max_point
      max_point=hash[:home][:players][counter][:points]
      max_point_name=hash[:home][:players][counter][:player_name]
    end
    if hash[:away][:players][counter][:points]> max_point
      max_point=hash[:away][:players][counter][:points]
      max_point_name=hash[:away][:players][counter][:player_name]
    end
      
  counter +=1
  end
  max_point_name

end

def winning_team
  hash=game_hash
  counter =0 
  total_players=hash[:home][:players].size
  total_score_nets=0
  total_score_hornets=0
  while counter <total_players do
    
  total_score_nets+=hash[:home][:players][counter][:points]
  total_score_hornets+=hash[:away][:players][counter][:points]
  counter +=1
  end
   
  if total_score_hornets<total_score_nets
    return hash[:home][:team_name]
   else 
     return hash[:away][:team_name]
   end
end


def player_with_longest_name
  
  array=[]
  game_hash.each do |home_away, the_rest|
    the_rest[:players].each do |i|
      array << [i][:player_name]
  end
end
 array.max_by {|x| x.length}
end  




#   hash=game_hash
#   counter =0
#   total_players=hash[:home][:players][counter][:player_name].length
#   longest_name_length=0
#   longest_name=""
  
#   while counter < total_players do
    
#     if (hash[:home][:players][counter][:player_name].length>longest_name_length)
#       longest_name_length=hash[:home][:players][counter][:player_name].length
#       longest_name=hash[:home][:players][counter][:player_name]
#     end
    
#     if (hash[:away][:players][counter][:player_name].length>longest_name_length)
#       longest_name_length=hash[:away][:players][counter][:player_name].length
#       longest_name=hash[:away][:players][counter][:player_name]
#     end
    
#     counter +=1
# end
#   longest_name
# end










