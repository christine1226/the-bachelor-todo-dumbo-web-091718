def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ")[0]
    end
  end
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
  person = 0
  data.each do |hash_season, contestants_array|
    contestants_array.find do |contestant|
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
  summed_ages = contestant_age.reduce(0) {|sum,age|
  sum += age}
  contestant_count = contestant_age.count.to_f
  (summed_ages/contestant_count).round
end
