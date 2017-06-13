puts "Welcome to Shannon's Walk-a-Thon Tracker!"
puts "Helping you raise money for what matters to you"

puts "What is your earning goal?"
goal = gets.chomp

puts "How much do walkers raise per lap?"
per_lap = gets.chomp

participant_database = []

#calculate how much money each participant raised
5.times do |i|
  participant_information = {}
  participant_information["participant_name"] = "Participant #{i + 1}"
  puts "How many laps did participant #{i + 1} complete?"
  laps = gets.chomp
  participant_information["laps"] = laps
  individual_earned = per_lap.to_f * laps.to_f
  participant_information["money_earned"] = individual_earned
  puts "#{participant_information["participant_name"]} earned $#{individual_earned}."
  participant_database << participant_information
end

puts "The fundraising goal was $#{goal}."

#calculate who earned the most money
maximum = 0
participant = ""
participant_database.each do |participant_money|
  if participant_money["money_earned"] > maximum
    maximum = participant_money["money_earned"]
    participant = participant_money["participant_name"]
  end
end
puts "#{participant} raised the most money with $#{maximum}."

#calculate whether the goal was reached
total_raised = 0
participant_database.each do |participant_money|
  total_raised += participant_money["money_earned"]
end

if goal.to_f <= total_raised.to_f
  puts "We met our goal! We raised #{total_raised}."
else
  missed = goal.to_f - total_raised.to_f
  puts "The goal was missed by $#{missed}"
end
