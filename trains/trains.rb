trains = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

train_111 = trains[7]
puts train_111
train_80B = trains[5]
puts train_80B
train_610 = trains[2]
puts train_610

def train_direction (arr, direction)
  train_direction = []
  for train in arr
    if train[:direction] == direction
        train_direction.push(train[:train])
       end
   end
   return train_direction
end

puts "Northbound Trains"
puts train_direction(trains, "north")
puts "Eastbound Trains:"
puts train_direction(trains, "east")
puts "--------"
trains[0][:departure_time] = 12
puts trains[0]
