def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestant_info|
    if season_num == season
      contestant_info.each do |contestant, value|
        puts contestant["status"] == "Winner"
        first_name = contestant["name"].to_s.split(" ")
        return first_name[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, contestant_info|
    contestant_info.each do |contestant, value|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  girls_from_hometown = 0
  data.each do |season_num, contestant_info|
    contestant_info.each do |contestant, value|
      if contestant["hometown"] == hometown
        girls_from_hometown += 1
      end
    end
  end
  return girls_from_hometown
end

def get_occupation(data, hometown)
  data.each do |season_num, contestant_info|
    contestant_info.each do |contestant, value|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  girls_average_age = []
  data.each do |season_num, contestant_info|
    if season_num == season
      contestant_info.each do |contestant, value|
         girls_average_age.push(contestant["age"].to_f)
      end
    end
  end
  return (girls_average_age.inject{ |sum, el| sum + el } / girls_average_age.size).round
end
