def get_first_name_of_season_winner(data, season)
  # code here
end

def get_contestant_name(data, occupation)
  # code here
  person = nil
  data.each do |hash_season, contestant_array|
    contestant_array.find do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
  person = []
  data.each do |hash_season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"] == hometown
        person << hash_season
      end
    end
  end
  person.length
end

def get_occupation(data, hometown)
  person = nil
  data.each do |hash_season, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"] == hometown
        person = contestant["occupation"]
      end
    end
  end
  person
end

def get_average_age_for_season(data, season)
  contestant_age = data[season].collect do |contestant|
    contestant["age"].to_i
end
end
  
