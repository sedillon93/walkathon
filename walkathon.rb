puts "Welcome to Shannon's Walk-a-Thon Tracker!"
puts "Helping you raise money for what matters to you"

puts "What is your earning goal?"
goal = gets.chomp

puts "How much do walkers raise per lap?"
per_lap = gets.chomp

puts "How many laps were completed by each participant?"
laps_data = []
5.times do |i|
  puts "Participant #{i + 1} completed:"
  laps = gets.chomp
  laps_data << laps
end

#calculate how much money each participant raised
money_earned = []
laps_data.each do |participant|
  individual_earned = participant.to_i*per_lap.to_i
  money_earned << individual_earned
end

puts "The fundraising goal was $#{goal}."

#determine who earned the most money
if money_earned[0] > money_earned[1] && money_earned[0] > money_earned[2] && money_earned[0] > money_earned[3] && money_earned[0] > money_earned[4]
  puts "Participant 1 raised the most money with $#{money_earned[0]}"
elsif money_earned[1] > money_earned[0] && money_earned[1] > money_earned[2] && money_earned[1] > money_earned[3] && money_earned[1] > money_earned[4]
  puts "Participant 2 raised the most money with $#{money_earned[1]}"
elsif money_earned[2] > money_earned[0] && money_earned[2] > money_earned[1] && money_earned[2] > money_earned[3] && money_earned[2] > money_earned[4]
  puts "Participant 3 raised the most money with $#{money_earned[2]}"
elsif money_earned[3] > money_earned[0] && money_earned[3] > money_earned[1] && money_earned[3] > money_earned[2] && money_earned[3] > money_earned[4]
  puts "Participant 4 raised the most money with $#{money_earned[3]}"
else
  puts "Participant 5 raised the most money with $#{money_earned[4]}"
end

#calculate whether the goal was reached
total_raised = 0
money_earned.each do |participant_money|
  total_raised += participant_money
end
puts "The total raised was $#{total_raised}."

if goal.to_i <= total_raised.to_i
  puts "We met our goal!"
else
  missed = goal.to_i - total_raised.to_i
  puts "The goal was missed by $#{missed}"
end
